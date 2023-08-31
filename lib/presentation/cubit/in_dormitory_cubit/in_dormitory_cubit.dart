import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/core/utils/service_link.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_faculties.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_in_dormitory.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_in_dormitory_list.dart';
import 'package:uni_hostel_admin/data/models/in_dormitory/in_dormitory_response.dart';
import 'package:uni_hostel_admin/data/models/order/get_faculties/get_faculties_response.dart';
part 'in_dormitory_state.dart';
part 'in_dormitory_cubit.freezed.dart';

class InDormitoryCubit extends Cubit<InDormitoryState> {
  InDormitoryCubit(
      this._orderUsCase, this._getFacultiesUsCase, this._getOrdersListUseCase)
      : super(InDormitoryState());
  final GetInDormitoryUseCase _orderUsCase;
  final GetFacultiesUsCase _getFacultiesUsCase;
  final GetInDormitoryListUseCase _getOrdersListUseCase;

  Future<void> getInDormitory() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _orderUsCase.call(GetInDormitoryParams(
      page: 1,
      search: state.search,
      course: state.courseIndex,
      facultyId: state.facultyIndex?.id,
      dormitory: null,
      gender: getGender(),
    ));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(
        state.copyWith(
          hasReachedMax: success.next == null,
          page: 2,
          orderResponse: success,
          orderList: success.results ?? [],
          status: Status.SUCCESS,
        ),
      );
    });
  }

  Future<void> getInDormitoryInfinite() async {
    if (state.hasReachedMax) {
      return;
    }
    emit(state.copyWith(loadingPagination: true));
    var result = await _orderUsCase.call(
      GetInDormitoryParams(
        page: state.page,
        search: state.search,
        course: state.courseIndex,
        facultyId: state.facultyIndex?.id,
        dormitory: null,
        gender: getGender(),
      ),
    );
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.ERROR)),
      (response) => emit(
        state.copyWith(
          hasReachedMax: response.next == null,
          page: state.page + 1,
          orderResponse: response,
          orderList: List.of(state.orderList)..addAll(response.results ?? []),
          loadingPagination: false,
        ),
      ),
    );
  }
   

  Future<void> getDormitoryList() async {
    emit(state.copyWith(status: Status.UNKNOWN));
    var result = await _getOrdersListUseCase.call(
      GetInDormitoryListParams(
        search: "",
        facultyId: state.facultyIndex?.id,
        course: state.courseIndex,
        gender: getGender(),
        dormitory: null,
      ),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(state.copyWith(ordersList: success.file, status: Status.SUCCESS));
      ServiceUrl.launchInBrow(state.ordersList ?? "");
    });
  }

  Future<void> getFaculties() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _getFacultiesUsCase.call(NoParams());
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.ERROR)),
      (success) {
        List<String> list = [];
        for (var i = 0; i < success.response!.length; i++) {
          list.add(success.response?[i].name ?? "");
        }
        list.add(AppStrings.strNoneOfThem);
        emit(state.copyWith(
          facultiesList: list,
          facultiesResponse: success.response ?? [],
        ));
        getInDormitory();
      },
    );
  }

  void searchInDormitory(String search) {
    emit(state.copyWith(search: search));
    getInDormitory();
  }

  void selectFaculty(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(
        facultyIndex: FacultiesModel(name: "", id: null),
      ));
      getInDormitory();
    } else {
      for (var i = 0; i < state.facultiesResponse.length; i++) {
        if (index == state.facultiesResponse[i].name) {
          emit(state.copyWith(
            facultyIndex: FacultiesModel(
                name: state.facultiesResponse[i].name,
                id: state.facultiesResponse[i].id),
          ));
          getInDormitory();
        }
      }
    }
  }

  void selectCourse(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(courseIndex: ""));
      getInDormitory();
    } else {
      emit(state.copyWith(courseIndex: index));
      getInDormitory();
    }
  }

  String getGender() {
    for (var i = 0; i < genders.length; i++) {
      if (genders[i] == state.genderIndex) {
        if (AppStrings.strNoneOfThem == state.genderIndex) {
          return "";
        } else {
          return gendersForRequest[i];
        }
      }
    }
    return "";
  }
    

  void selectGender(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(genderIndex: ""));
      getInDormitory();
    } else {
      for (var i = 0; i < genders.length; i++) {
        if (index == genders[i]) {
          emit(state.copyWith(genderIndex: genders[i]));
          getInDormitory();
        }
      }
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/delete_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_selected_order.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
part 'selected_order_state.dart';
part 'selected_order_cubit.freezed.dart';

class SelectedOrderCubit extends Cubit<SelectedOrderState> {
  SelectedOrderCubit(this._orderUsCase, this._deleteOrderUseCase)
      : super(SelectedOrderState());
  final SelectedOrderUseCase _orderUsCase;
  final DeleteOrderUseCase _deleteOrderUseCase;

  Future<void> getSelectedOrder(int id) async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _orderUsCase.call(SelectedOrderParams(id: id));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(state.copyWith(
        orderResponse: success,
        ironNotebook: success.ironNotebook,
        womensBook: success.womensBook,
        youthsNotebook: success.youthsNotebook,
        fosterHome: success.fosterHome,
        noBreadWinner: success.noBreadwinner,
        oneParentsIsDead: success.oneParentsIsDead,
        disabled: success.disabled,
        giftedStudent: success.giftedStudent,
        hasManyChildrenFamily: success.hasManyChildrenFamily,
        status: Status.SUCCESS,
      ));
      getStatus();
    });
  }

  Future<void> deleteOrder(int id) async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _deleteOrderUseCase.call(DeleteOrderParams(id: id));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      debugPrint("====1=======${state.status}============");
      emit(state.copyWith(status: Status.SUCCESS));
      debugPrint("===2========${state.status}============");
    });
  }

  bool cheack() {
    if (state.ironNotebook == false &&
        state.womensBook == false &&
        state.youthsNotebook == false &&
        state.fosterHome == false &&
        state.noBreadWinner == false &&
        state.oneParentsIsDead == false &&
        state.disabled == false &&
        state.giftedStudent == false &&
        state.hasManyChildrenFamily == false) {
      return false;
    } else {
      return true;
    }
  }

   Future<void> getStatus() async {
    List<String> trueProperties = [];
    Map<String, bool> properties = {
      "iron_notebook": state.orderResponse?.ironNotebook ?? false,
      "womens_book": state.orderResponse?.womensBook ?? false,
      "youths_notebook": state.orderResponse?.youthsNotebook ?? false,
      "foster_home": state.orderResponse?.fosterHome ?? false,
      "no_breadwinner": state.orderResponse?.noBreadwinner ?? false,
      "one_parents_is_dead": state.orderResponse?.oneParentsIsDead ?? false,
      "disabled": state.orderResponse?.disabled ?? false,
      "gifted_student": state.orderResponse?.giftedStudent ?? false,
      "has_many_children_family":
          state.orderResponse?.hasManyChildrenFamily ?? false,
    };
    properties.forEach((key, value) {
      if (value) {
        switch (key) {
          case "iron_notebook":
            trueProperties.add(AppStrings.strIronNotebook);
            break;
          case "womens_book":
            trueProperties.add(AppStrings.strWomenNotebook);
            break;
          case "youths_notebook":
            trueProperties.add(AppStrings.strYouthNotebook);
            break;
          case "foster_home":
            trueProperties.add(AppStrings.strFosterCareHome);
            break;
          case "no_breadwinner":
            trueProperties.add(AppStrings.strParentsDead);
            break;
          case "one_parents_is_dead":
            trueProperties.add(AppStrings.strOneParentsDead);
            break;
          case "disabled":
            trueProperties.add(AppStrings.strDisabledGroup);
            break;
          case "gifted_student":
            trueProperties.add(AppStrings.strGiftedStudent);
            break;
          case "has_many_children_family":
            trueProperties.add(AppStrings.strHasManyChildrenFamily);
            break;
          default:
        }
      }
    });
    emit(
        state.copyWith(trueProperties: trueProperties, status: Status.SUCCESS));
   
  }

  Future<void> checkBox(int index) async {
    switch (index) {
      case 1:
        emit(state.copyWith(
            ironNotebook: !state.ironNotebook, status: Status.UNKNOWN));
        debugPrint(state.ironNotebook.toString());
        break;
      case 2:
        emit(state.copyWith(
            womensBook: !state.womensBook, status: Status.UNKNOWN));
        break;
      case 3:
        emit(state.copyWith(
            youthsNotebook: !state.youthsNotebook, status: Status.UNKNOWN));
        break;
      case 4:
        emit(state.copyWith(
            fosterHome: !state.fosterHome, status: Status.UNKNOWN));
        break;
      case 5:
        emit(state.copyWith(
            noBreadWinner: !state.noBreadWinner, status: Status.UNKNOWN));
        break;
      case 6:
        emit(state.copyWith(
            oneParentsIsDead: !state.oneParentsIsDead, status: Status.UNKNOWN));
        break;
      case 7:
        emit(state.copyWith(disabled: !state.disabled, status: Status.UNKNOWN));
        break;
      case 8:
        emit(state.copyWith(
            giftedStudent: !state.giftedStudent, status: Status.UNKNOWN));
        break;
      case 9:
        emit(state.copyWith(
            hasManyChildrenFamily: !state.hasManyChildrenFamily,
            status: Status.UNKNOWN));
        debugPrint(state.hasManyChildrenFamily.toString());
        break;
      default:
    }
  }
}

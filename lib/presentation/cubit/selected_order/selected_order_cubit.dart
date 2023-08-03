import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_selected_order.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
part 'selected_order_state.dart';
part 'selected_order_cubit.freezed.dart';

class SelectedOrderCubit extends Cubit<SelectedOrderState> {
  SelectedOrderCubit(this._orderUsCase) : super(SelectedOrderState());
  final SelectedOrderUseCase _orderUsCase;

  Future<void> getSelectedOrder(int id) async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _orderUsCase.call(SelectedOrderParams(id: id));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(state.copyWith(orderResponse: success, status: Status.SUCCESS));
      getStatus();
    });
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
          default:
        }
      }
    });
    emit(
        state.copyWith(trueProperties: trueProperties, status: Status.SUCCESS));
  }
}

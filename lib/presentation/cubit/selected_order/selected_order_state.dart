part of 'selected_order_cubit.dart';

@freezed
class SelectedOrderState with _$SelectedOrderState {
  const factory SelectedOrderState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    SelectOrderResponse? orderResponse,
    List<CheckBoxModel>? checkBoxModel,
    @Default([]) List<String> trueProperties,

    // // Iterate through the map and check for properties with a value of true
  }) = _SelectedOrderState;
}

class CheckBoxModel {
  final String title;
  final bool isStatus;

  const CheckBoxModel(this.title, this.isStatus);
}

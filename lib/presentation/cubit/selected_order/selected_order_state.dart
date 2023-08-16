part of 'selected_order_cubit.dart';

@freezed
class SelectedOrderState with _$SelectedOrderState {
  const factory SelectedOrderState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    SelectOrderResponse? orderResponse,
    @Default(false) bool ironNotebook,
    @Default(false) bool womensBook,
    @Default(false) bool youthsNotebook,
    @Default(false) bool fosterHome,
    @Default(false) bool noBreadWinner,
    @Default(false) bool oneParentsIsDead,
    @Default(false) bool disabled,
    @Default(false) bool giftedStudent,
    @Default(false) bool hasManyChildrenFamily,
    @Default([]) List<String> trueProperties,
        List<CheckBoxModel>? checkBoxModel,

  }) = _SelectedOrderState;
}

class CheckBoxModel {
  final String title;
  final bool isStatus;

  const CheckBoxModel(this.title, this.isStatus);
}

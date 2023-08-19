import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/edit_status.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/request/edit_status_request.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/response/edit_status_response.dart';
part 'edit_status_state.dart';
part 'edit_status_cubit.freezed.dart';

class EditStatusCubit extends Cubit<EditStatusState> {
  EditStatusCubit(this._editStatusUsCase) : super(EditStatusState());
  final EditStatusUseCase _editStatusUsCase;

  void editStatus(
    int id,
    String? status,
    int? monthlyPaymentPrice,
    String? cancelReason,
    int? paymentDate,
    bool ironNotebook,
    bool womensBook,
    bool youthsNotebook,
    bool fosterHome,
    bool noBreadWinner,
    bool oneParentsIsDead,
    bool disabled,
    bool giftedStudent,
    bool hasManyChildrenFamily,
  ) async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _editStatusUsCase.call(
      EditStatusParams(
        id: id,
        request: EditStatusRequest(
            status: status == AppStrings.strApprovedAd
                ? "accepted"
                : status == AppStrings.strRejectedAd
                    ? "cancelled"
                    : "in_queue",
            monthlyPaymentPrice: monthlyPaymentPrice,
            cancelReason: cancelReason,
            paymentDate: paymentDate,
            ironNotebook: ironNotebook,
            womensBook: womensBook,
            youthsNotebook: youthsNotebook,
            fosterHome: fosterHome,
            noBreadWinner: noBreadWinner,
            oneParentsIsDead: oneParentsIsDead,
            disabled: disabled,
            giftedStudent: giftedStudent,
            hasManyChildrenFamily: hasManyChildrenFamily,
            basedOnPaymentContract: false),
      ),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(state.copyWith(response: success, status: Status.SUCCESS));
    });
  }

  void getStart() async {
    emit(state.copyWith(status: Status.UNKNOWN));
  }
}

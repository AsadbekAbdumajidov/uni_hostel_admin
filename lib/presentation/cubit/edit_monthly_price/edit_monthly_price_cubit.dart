import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/edit_monthly_price_uscase.dart';
import 'package:uni_hostel_admin/data/models/edit_mothly_price/edit_mothly_price_request.dart';
part 'edit_monthly_price_state.dart';
part 'edit_monthly_price_cubit.freezed.dart';

class EditMonthlyPriceCubit extends Cubit<EditMonthlyPriceState> {
  EditMonthlyPriceCubit(this._editMonthlyPriceUseCase)
      : super(EditMonthlyPriceState());
  final EditMonthlyPriceUseCase _editMonthlyPriceUseCase;

  Future<void> editMontlhyPrice({required int id,required int amount}) async {
    emit(state.copyWith(status: Status.OTHER));
    var result = await _editMonthlyPriceUseCase.call(
      EditMonthlyPriceParams(request: EditMonthlyPriceRequest(studentid: id, amount: amount)),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(status: Status.SUCCESS));
    });
  }
}

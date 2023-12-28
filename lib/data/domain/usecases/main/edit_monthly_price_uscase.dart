import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/edit_mothly_price/edit_mothly_price_request.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/response/edit_status_response.dart';
import '../../../../core/error/error.dart';

class EditMonthlyPriceUseCase extends UseCase<EditStatusResponse, EditMonthlyPriceParams> {
  final IMainRepository _iMainRepository;
  EditMonthlyPriceUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, EditStatusResponse>> call(EditMonthlyPriceParams params) =>
      _iMainRepository.editMonthlyPrice(params.request);
}

class EditMonthlyPriceParams {
  final EditMonthlyPriceRequest request;
  EditMonthlyPriceParams({required this.request});
}

import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/payment_monitoring/payment_monitoring_response.dart';

class PaymentsUsCase
    extends UseCase<PaymentMonitoringResponse, PaymentsParams> {
  final IMainRepository _iMainRepository;
  PaymentsUsCase(this._iMainRepository);

  @override
  Future<Either<Failure, PaymentMonitoringResponse>> call(
          PaymentsParams params) =>
      _iMainRepository.getPayments(
          params.page, params.search, params.dormitoryId,params.maritalStatus,params.facultyId);
}

class PaymentsParams {
  final int page;
  final String search;
  final int? dormitoryId;
  final String maritalStatus;
  final int? facultyId;

  PaymentsParams({
    required this.page,
    required this.search,
    this.dormitoryId,
    required this.maritalStatus,
    this.facultyId,
  });
}

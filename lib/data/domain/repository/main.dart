import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/edit_status_request.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';

abstract class IMainRepository {
  Future<Either<Failure, GetOrderResponse>> getOrder(
      int page, String status, String search, String course);
  Future<Either<Failure, GetOrderResponse>> getNewOrder(
    int page,
    String search,
    String maritalStatus,
  );
  Future<Either<Failure, SelectOrderResponse>> getSelectOrder(int id);
  Future<Either<Failure, GetOrderResponse>> editStatus(
      EditStatusRequest request, int id);
}

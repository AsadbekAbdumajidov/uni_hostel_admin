import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/data/models/download_orders_list/download_orders_list_response.dart';
import 'package:uni_hostel_admin/data/models/in_dormitory/in_dormitory_response.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/request/edit_status_request.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/response/edit_status_response.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import 'package:uni_hostel_admin/data/models/payment_monitoring/payment_monitoring_response.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';

import '../../models/order/get_faculties/get_faculties_response.dart';

abstract class IMainRepository {
  Future<Either<Failure, GetOrderResponse>> getOrder(
    int page,
    String status,
    String search,
    String course,
    int? facultyId,
    String maritalStatus,
  );
  Future<Either<Failure, GetInDormitoryResponse>> getInDormitory(
    int page,
    String course,
    int? facultyId,
    String search,
    String? gender,
    String? dormitory,
  );

  Future<Either<Failure, DownloadOrdersListResponse>> getInDormitoryList(
    String search,
    String? course,
    int? facultyId,
    String? gender,
    String? dormitory,
  );

  Future<Either<Failure, GetOrderResponse>> getNewOrder(
    int page,
    String search,
    String maritalStatus,
    int? facultyId,
    String? course,
  );
  Future<Either<Failure, SelectOrderResponse>> getSelectOrder(int id);

  Future<Either<Failure, EditStatusResponse>> editStatus(
    EditStatusRequest request,
    int id,
  );
  Future<Either<Failure, bool>> deleteOrder(int id);
  Future<Either<Failure, ProfileResponse>> getProfile();

  Future<Either<Failure, GetFacultiesResponse>> getFaculties();

  Future<Either<Failure, DownloadOrdersListResponse>> getOrdersList(
    String maritalStatus,
    String status,
    String? course,
    int? facultyId,
    String search,
  );

  Future<Either<Failure, PaymentMonitoringResponse>> getPayments(int page);
}

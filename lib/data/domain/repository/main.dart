import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/data/models/admin/admin_post/add_admin_request.dart';
import 'package:uni_hostel_admin/data/models/admin/admins_get/admins_response.dart';
import 'package:uni_hostel_admin/data/models/download_orders_list/download_orders_list_response.dart';
import 'package:uni_hostel_admin/data/models/edit_mothly_price/edit_mothly_price_request.dart';
import 'package:uni_hostel_admin/data/models/get_dormitory/get_dormitory_response.dart';
import 'package:uni_hostel_admin/data/models/in_dormitory/in_dormitory_response.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/request/edit_status_request.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/response/edit_status_response.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import 'package:uni_hostel_admin/data/models/payment_monitoring/payment_monitoring_response.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
import 'package:uni_hostel_admin/data/models/statistics/admin_statistics/admin_statistics_response.dart';
import 'package:uni_hostel_admin/data/models/statistics/student_statistics/student_statistics_response.dart';

import '../../models/order/get_faculties/get_faculties_response.dart';

abstract class IMainRepository {
  Future<Either<Failure, GetOrderResponse>> getOrder(
    int page,
    String status,
    String search,
    String course,
    int? facultyId,
    String maritalStatus,
    String? inDormitory,
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
    String? waitingS,
    String? inDormitory,
  );

  Future<Either<Failure, PaymentMonitoringResponse>> getPayments(
    int page,
    String search,
    int? dormitoryId,
    String maritalStatus,
    int? facultyId,
  );

  Future<Either<Failure, GetAdminsResponse>> getAdmins();

  Future<Either<Failure, ProfileResponse>> addAdmin(
      AddAdminRequest? request, PlatformFile? file);

  Future<Either<Failure, ProfileResponse>> editAdmin(
      AddAdminRequest? request, int id, PlatformFile? file);

  Future<Either<Failure, bool>> deleteAdmin(int id);
  Future<Either<Failure, MainStatisticsResponse>> getMainStatistics();
  Future<Either<Failure, StudentStatisticsResponse>> getStudentStatistics();
  Future<Either<Failure, List<GetDormitoryResponse>>> getDormitories();
  Future<Either<Failure, EditStatusResponse>> editMonthlyPrice(EditMonthlyPriceRequest request);

}

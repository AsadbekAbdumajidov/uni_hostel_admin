import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/models/admin/admins_get/admins_response.dart';
import 'package:uni_hostel_admin/data/models/download_orders_list/download_orders_list_response.dart';
import 'package:uni_hostel_admin/data/models/edit_mothly_price/edit_mothly_price_request.dart';
import 'package:uni_hostel_admin/data/models/get_dormitory/get_dormitory_response.dart';
import 'package:uni_hostel_admin/data/models/in_dormitory/in_dormitory_response.dart';
import 'package:uni_hostel_admin/data/models/login/request/login_request_model.dart';
import 'package:uni_hostel_admin/data/models/login/response/login_response_model.dart';
import 'package:uni_hostel_admin/data/models/order/get_faculties/get_faculties_response.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/request/edit_status_request.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/response/edit_status_response.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import 'package:uni_hostel_admin/data/models/payment_monitoring/payment_monitoring_response.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
import 'package:uni_hostel_admin/data/models/statistics/admin_statistics/admin_statistics_response.dart';
import 'package:uni_hostel_admin/data/models/statistics/student_statistics/student_statistics_response.dart';
part 'provider.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs

@RestApi(baseUrl: BASE_URL)
abstract class ApiClient {
  factory ApiClient(Dio dio, String baseUrl) {
    dio.options = BaseOptions(receiveTimeout: 30000, connectTimeout: 30000);
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @POST('admin/login/')
  Future<LoginResponseModel> login(@Body() LoginRequestModel request);

  @GET('admin/order/')
  Future<GetOrderResponse> getOrder(
    @Query("page") int page,
    @Query("status") String status,
    @Query("search_query") String search,
    @Query("course") String course,
    @Query("faculty") int? facultyId,
    @Query("marital_status") String maritalStatus,
    @Query("in_the_dormitory") String? inDormitory,
  );

  @GET('admin/new/orders/')
  Future<GetOrderResponse> getNewOrders(
    @Query("page") int page,
    @Query("search_query") String search,
    @Query("marital_status") String maritalStatus,
    @Query("faculty") int? facultyId,
    @Query("course") String? course,
  );

  @GET('admin/order/{id}/')
  Future<SelectOrderResponse> getSelectedOrder(@Path('id') int id);

  @PATCH('admin/order/{id}/')
  Future<EditStatusResponse> editStatus(
    @Body() EditStatusRequest request,
    @Path('id') int id,
  );

  @DELETE('admin/order/{id}/')
  Future<bool> deleteOrder(@Path('id') int id);

  @GET('admin/all/facultys/')
  Future<GetFacultiesResponse> getFaculties();

  @GET('admin/download/orders/list/')
  Future<DownloadOrdersListResponse> downloadOrdersList(
    @Query("marital_status") String maritalStatus,
    @Query("status") String status,
    @Query("course") String? course,
    @Query("faculty") int? facultyId,
    @Query("search_query") String search,
    @Query("waiting_status") String? waitingS,
    @Query("in_the_dormitory") String? inDormitory,
  );

  @GET('admin/profile/')
  Future<ProfileResponse> getProfile();

  @GET('admin/students/in/dormitory/')
  Future<GetInDormitoryResponse> getInDormitory(
    @Query("page") int page,
    @Query("course") String? course,
    @Query("faculty") int? facultyId,
    @Query("search_query") String search,
    @Query("gender") String? gender,
    @Query("dormitory") String? dormitoryId,
  );

  @GET('admin/download/students/in/dormitory/')
  Future<DownloadOrdersListResponse> downloadIndormitory(
    @Query("search_query") String search,
    @Query("course") String? course,
    @Query("faculty") int? facultyId,
    @Query("gender") String? gender,
    @Query("dormitory") String? dormitoryId,
  );

  @GET('admin/payment/monitoring/')
  Future<PaymentMonitoringResponse> getPayments(
    @Query("page") int page,
    @Query("search_query") String search,
    @Query("dormitory_id") int? dormitoryId,
    @Query("marital_status") String maritalStatus,
    @Query("faculty_id") int? facultyId,
  );

  @GET('admin/administrator/')
  Future<GetAdminsResponse> getAdmins();

  @DELETE('admin/administrator/{id}')
  Future<bool> deleteAdmin(@Path('id') int id);

  @GET('admin/orders/main/statistics/')
  Future<MainStatisticsResponse> getMainStatistics();

  @GET('admin/students/main/statistics/')
  Future<StudentStatisticsResponse> getStudentStatistics();

  @GET('admin/dormitory/')
  Future<List<GetDormitoryResponse>> getDormitories();

  @POST('admin/update/student/monthly/payment/')
  Future<EditStatusResponse> editMonthlyPrice(@Body() EditMonthlyPriceRequest request);
}

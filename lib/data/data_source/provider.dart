import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/models/download_orders_list/download_orders_list_response.dart';
import 'package:uni_hostel_admin/data/models/login/request/login_request_model.dart';
import 'package:uni_hostel_admin/data/models/login/response/login_response_model.dart';
import 'package:uni_hostel_admin/data/models/order/get_faculties/get_faculties_response.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/edit_status_request.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
part 'provider.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs

@RestApi(baseUrl: BASE_URL)
abstract class ApiClient {
  factory ApiClient(Dio dio, String baseUrl) {
    dio.options = BaseOptions(receiveTimeout: 3000, connectTimeout: 3000);
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
  Future<GetOrderResponse> editStatus(
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
  );
}

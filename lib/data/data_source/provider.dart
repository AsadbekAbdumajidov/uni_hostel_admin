import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/models/login/request/login_request_model.dart';
import 'package:uni_hostel_admin/data/models/login/response/login_response_model.dart';
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
  );

  @GET('admin/new/orders/')
  Future<GetOrderResponse> getNewOrders(
    @Query("page") int page,
    @Query("search_query") String search,
  );

  @GET('admin/order/{id}/')
  Future<SelectOrderResponse> getSelectedOrder(@Path('id') int id);

  @PATCH('admin/order/{id}/')
  Future<GetOrderResponse> editStatus(
    @Body() EditStatusRequest request,
    @Path('id') int id,
  );
}

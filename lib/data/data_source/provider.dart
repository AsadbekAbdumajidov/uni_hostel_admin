import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/models/login/request/login_request_model.dart';
import 'package:uni_hostel_admin/data/models/login/response/login_response_model.dart';
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

 
}

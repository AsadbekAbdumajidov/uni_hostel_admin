import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:file_picker/file_picker.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/data_source/provider.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/admin/admin_post/add_admin_request.dart';
import 'package:uni_hostel_admin/data/models/admin/admins_get/admins_response.dart';
import 'package:uni_hostel_admin/data/models/download_orders_list/download_orders_list_response.dart';
import 'package:uni_hostel_admin/data/models/in_dormitory/in_dormitory_response.dart';
import 'package:uni_hostel_admin/data/models/order/get_faculties/get_faculties_response.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/request/edit_status_request.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/response/edit_status_response.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import 'package:uni_hostel_admin/data/models/payment_monitoring/payment_monitoring_response.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';

class MainRepository implements IMainRepository {
  final ApiClient _apiClient;
  final SharedPreferences _localDatasource;

  MainRepository(this._apiClient, this._localDatasource);

  @override
  Future<Either<Failure, GetOrderResponse>> getOrder(
    int page,
    String status,
    String search,
    String course,
    int? facultyId,
    String maritalStatus,
  ) async {
    try {
      final response = await _apiClient.getOrder(
          page, status, search, course, facultyId ?? null, maritalStatus);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, SelectOrderResponse>> getSelectOrder(int id) async {
    try {
      final response = await _apiClient.getSelectedOrder(id);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, GetOrderResponse>> getNewOrder(int page, String search,
      String maritalStatus, int? faculty, String? course) async {
    try {
      final response = await _apiClient.getNewOrders(
          page, search, maritalStatus, faculty ?? null, course ?? null);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, EditStatusResponse>> editStatus(
      EditStatusRequest request, int id) async {
    try {
      final response = await _apiClient.editStatus(request, id);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, bool>> deleteOrder(int id) async {
    try {
      await _apiClient.deleteOrder(id);
      return Right(true);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, GetFacultiesResponse>> getFaculties() async {
    try {
      final response = await _apiClient.getFaculties();
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, DownloadOrdersListResponse>> getOrdersList(
    String maritalStatus,
    String status,
    String? course,
    int? facultyId,
    String search,
  ) async {
    try {
      final response = await _apiClient.downloadOrdersList(
        maritalStatus,
        status,
        course ?? "",
        facultyId ?? null,
        search,
      );
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, ProfileResponse>> getProfile() async {
    try {
      final response = await _apiClient.getProfile();
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, GetInDormitoryResponse>> getInDormitory(
    int page,
    String course,
    int? facultyId,
    String search,
    String? gender,
    String? dormitory,
  ) async {
    try {
      final response = await _apiClient.getInDormitory(
          page, course, facultyId, search, gender, dormitory);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UnknownFailure()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, DownloadOrdersListResponse>> getInDormitoryList(
    String search,
    String? course,
    int? facultyId,
    String? gender,
    String? dormitoryId,
  ) async {
    try {
      final response = await _apiClient.downloadIndormitory(
          search, course, facultyId, gender, dormitoryId);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UserNotFound()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, PaymentMonitoringResponse>> getPayments(
      int page) async {
    try {
      final response = await _apiClient.getPayments(page);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UnknownFailure()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, GetAdminsResponse>> getAdmins() async {
    try {
      final response = await _apiClient.getAdmins();
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UnknownFailure()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, ProfileResponse>> addAdmin(
      AddAdminRequest? request, PlatformFile? file) async {
    try {
      Dio dio = Dio();
      var image =
          MultipartFile.fromBytes(file?.bytes ?? [], filename: file?.name);
      debugPrint("File : ${image}");

      FormData formData = FormData.fromMap({
        "first_name": request?.firstName,
        "last_name": request?.lastName,
        "username": request?.username,
        "admin_region": request?.region,
        "user_type": request?.type,
        'admin_image': image
      });
      debugPrint(formData.fields.toString());
      final response = await dio.post('${BASE_URL}admin/administrator/',
          data: formData,
          options: Options(headers: {
            "Authorization":
                "Bearer ${_localDatasource.getString(ACCESS_TOKEN)}"
          }));
      debugPrint(response.data.toString());
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
      return Right(ProfileResponse.fromJson(response.data));
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const SubmittedFailure()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("ERR == $e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, ProfileResponse>> editAdmin(
      AddAdminRequest? request, int id, PlatformFile? file) async {
    try {
      Dio dio = Dio();
      debugPrint("AAAAAA = ${request?.firstName}");
      debugPrint("ID = $id");
      var image =
          MultipartFile.fromBytes(file?.bytes ?? [], filename: file?.name);
      debugPrint("File : ${image}");

      // Construct the FormData for the PATCH request
      FormData formData = FormData.fromMap({
        "first_name": request?.firstName,
        "last_name": request?.lastName,
        'admin_image': image,
        "username": request?.username,
        "admin_region": request?.region,
        "user_type": request?.type,
      });

      FormData withoutImgFormData = FormData.fromMap({
        "first_name": request?.firstName,
        "last_name": request?.lastName,
        "username": request?.username,
        "admin_region": request?.region,
        "user_type": request?.type,
      });

      final response = await dio.patch(
        '${BASE_URL}admin/administrator/$id/',
        data: file == null ? withoutImgFormData : formData,
        options: Options(
          headers: {
            "Authorization":
                "Bearer ${_localDatasource.getString(ACCESS_TOKEN)}"
          },
        ),
      );
      debugPrint("SSSSSSSS${response.data}");
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
      return Right(ProfileResponse.fromJson(response.data));
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
        debugPrint("SSSSSSSS${e.requestOptions.data}");
        debugPrint("SSSSSSSS${e.response?.statusMessage}");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const SubmittedFailure()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("ERR == $e");
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, bool>> deleteAdmin(int id) async {
    try {
      final response = await _apiClient.deleteAdmin(id);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 400)
            ? const UnknownFailure()
            : ServerFailure(e.response?.statusCode),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        debugPrint("$e");
      }
      rethrow;
    }
  }
}

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/data/data_source/provider.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/edit_status_request.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';

class MainRepository implements IMainRepository {
  final ApiClient _apiClient;
  MainRepository(this._apiClient);

  @override
  Future<Either<Failure, GetOrderResponse>> getOrder(int page,String status) async {
    try {
      final response = await _apiClient.getOrder(page,status);
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
  Future<Either<Failure, SelectOrderResponse>> getSelectOrder(int id)async {
 
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
  Future<Either<Failure, GetOrderResponse>> getNewOrder(int page,String search,String maritalStatus)async {
    try {
      final response = await _apiClient.getNewOrders(page,search,maritalStatus);
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
  Future<Either<Failure, GetOrderResponse>> editStatus(EditStatusRequest request,int id) async{
    try {
      final response = await _apiClient.editStatus(request,id);
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

}

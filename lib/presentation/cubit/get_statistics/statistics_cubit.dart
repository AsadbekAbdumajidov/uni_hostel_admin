import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/statistics_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/student_statistics_uscase.dart';
import 'package:uni_hostel_admin/data/models/statistics/admin_statistics/admin_statistics_response.dart';
import 'package:uni_hostel_admin/data/models/statistics/student_statistics/student_statistics_response.dart';

import '../../../core/usecase/usecase.dart';
part 'statistics_state.dart';
part 'statistics_cubit.freezed.dart';

class StatisticsCubit extends Cubit<StatisticsState> {
  StatisticsCubit(this._statisticsUseCase, this._studentStatisticsUseCase)
      : super(StatisticsState());
  final StatisticsUseCase _statisticsUseCase;
  final StudentStatisticsUseCase _studentStatisticsUseCase;

  Future<void> getMainStat() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _statisticsUseCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(state.copyWith(response: success, status: Status.SUCCESS));
      getStudentStat();
    });
  }

  Future<void> getStudentStat() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _studentStatisticsUseCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(
        state.copyWith(studentResponse: success, status: Status.SUCCESS),
      );
    });
  }
}

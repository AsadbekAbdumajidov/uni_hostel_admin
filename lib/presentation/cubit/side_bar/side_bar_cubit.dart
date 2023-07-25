import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'side_bar_state.dart';

class SideBarCubit extends Cubit<SideBarState> {
  SideBarCubit() : super(const SideBarState());

  void changeIndex(int index) async {
    emit(state.copyWith(currentIndex: index));
  }
}

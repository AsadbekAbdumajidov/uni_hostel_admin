part of 'side_bar_cubit.dart';

class SideBarState extends Equatable {
  const SideBarState({this.currentIndex = 0});
  final int currentIndex;

  SideBarState copyWith({int? currentIndex}) {
    return SideBarState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  @override
  List<Object> get props => [currentIndex];
}

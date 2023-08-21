// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.roomnumberoneController,
    this.homeModelObj,
  });

  TextEditingController? roomnumberoneController;

  HomeModel? homeModelObj;

  @override
  List<Object?> get props => [
        roomnumberoneController,
        homeModelObj,
      ];
  HomeState copyWith({
    TextEditingController? roomnumberoneController,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      roomnumberoneController:
          roomnumberoneController ?? this.roomnumberoneController,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}

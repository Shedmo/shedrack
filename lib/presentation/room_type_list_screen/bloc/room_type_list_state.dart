// ignore_for_file: must_be_immutable

part of 'room_type_list_bloc.dart';

/// Represents the state of RoomTypeList in the application.
class RoomTypeListState extends Equatable {
  RoomTypeListState({this.roomTypeListModelObj});

  RoomTypeListModel? roomTypeListModelObj;

  @override
  List<Object?> get props => [
        roomTypeListModelObj,
      ];
  RoomTypeListState copyWith({RoomTypeListModel? roomTypeListModelObj}) {
    return RoomTypeListState(
      roomTypeListModelObj: roomTypeListModelObj ?? this.roomTypeListModelObj,
    );
  }
}

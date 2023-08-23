// ignore_for_file: must_be_immutable

part of 'add_new_room_type_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddNewRoomType widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddNewRoomTypeEvent extends Equatable {}

/// Event that is dispatched when the AddNewRoomType widget is first created.
class AddNewRoomTypeInitialEvent extends AddNewRoomTypeEvent {
  @override
  List<Object?> get props => [];
}

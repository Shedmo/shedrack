// ignore_for_file: must_be_immutable

part of 'add_room_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddRoomOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddRoomOneEvent extends Equatable {}

/// Event that is dispatched when the AddRoomOne widget is first created.
class AddRoomOneInitialEvent extends AddRoomOneEvent {
  @override
  List<Object?> get props => [];
}

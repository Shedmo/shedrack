// ignore_for_file: must_be_immutable

part of 'add_room_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddRoom widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddRoomEvent extends Equatable {}

/// Event that is dispatched when the AddRoom widget is first created.
class AddRoomInitialEvent extends AddRoomEvent {
  @override
  List<Object?> get props => [];
}

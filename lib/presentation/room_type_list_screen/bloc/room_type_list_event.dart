// ignore_for_file: must_be_immutable

part of 'room_type_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RoomTypeList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RoomTypeListEvent extends Equatable {}

/// Event that is dispatched when the RoomTypeList widget is first created.
class RoomTypeListInitialEvent extends RoomTypeListEvent {
  @override
  List<Object?> get props => [];
}

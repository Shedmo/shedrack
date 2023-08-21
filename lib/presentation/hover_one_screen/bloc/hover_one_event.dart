// ignore_for_file: must_be_immutable

part of 'hover_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HoverOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HoverOneEvent extends Equatable {}

/// Event that is dispatched when the HoverOne widget is first created.
class HoverOneInitialEvent extends HoverOneEvent {
  @override
  List<Object?> get props => [];
}

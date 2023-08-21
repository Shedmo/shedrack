// ignore_for_file: must_be_immutable

part of 'property_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PropertyList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PropertyListEvent extends Equatable {}

/// Event that is dispatched when the PropertyList widget is first created.
class PropertyListInitialEvent extends PropertyListEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'create_property_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateProperty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreatePropertyEvent extends Equatable {}

/// Event that is dispatched when the CreateProperty widget is first created.
class CreatePropertyInitialEvent extends CreatePropertyEvent {
  @override
  List<Object?> get props => [];
}

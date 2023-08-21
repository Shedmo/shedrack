// ignore_for_file: must_be_immutable

part of 'check_availabily_output_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckAvailabilyOutput widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckAvailabilyOutputEvent extends Equatable {}

/// Event that is dispatched when the CheckAvailabilyOutput widget is first created.
class CheckAvailabilyOutputInitialEvent extends CheckAvailabilyOutputEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'create_booking_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateBooking widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateBookingEvent extends Equatable {}

/// Event that is dispatched when the CreateBooking widget is first created.
class CreateBookingInitialEvent extends CreateBookingEvent {
  @override
  List<Object?> get props => [];
}

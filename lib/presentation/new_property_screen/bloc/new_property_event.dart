// ignore_for_file: must_be_immutable

part of 'new_property_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewProperty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewPropertyEvent extends Equatable {}

/// Event that is dispatched when the NewProperty widget is first created.
class NewPropertyInitialEvent extends NewPropertyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date
class ChangeDateEvent extends NewPropertyEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}

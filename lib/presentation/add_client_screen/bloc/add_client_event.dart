// ignore_for_file: must_be_immutable

part of 'add_client_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddClient widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddClientEvent extends Equatable {}

/// Event that is dispatched when the AddClient widget is first created.
class AddClientInitialEvent extends AddClientEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date
class ChangeDateEvent extends AddClientEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}

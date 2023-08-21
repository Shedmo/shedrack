// ignore_for_file: must_be_immutable

part of 'client_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ClientList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ClientListEvent extends Equatable {}

/// Event that is dispatched when the ClientList widget is first created.
class ClientListInitialEvent extends ClientListEvent {
  @override
  List<Object?> get props => [];
}

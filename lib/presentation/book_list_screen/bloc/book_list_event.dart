// ignore_for_file: must_be_immutable

part of 'book_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookListEvent extends Equatable {}

/// Event that is dispatched when the BookList widget is first created.
class BookListInitialEvent extends BookListEvent {
  @override
  List<Object?> get props => [];
}

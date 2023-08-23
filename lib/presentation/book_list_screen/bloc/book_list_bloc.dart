import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/book_list_screen/models/book_list_model.dart';
part 'book_list_event.dart';
part 'book_list_state.dart';

/// A bloc that manages the state of a BookList according to the event that is dispatched to it.
class BookListBloc extends Bloc<BookListEvent, BookListState> {
  BookListBloc(BookListState initialState) : super(initialState) {
    on<BookListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookListInitialEvent event,
    Emitter<BookListState> emit,
  ) async {}
}

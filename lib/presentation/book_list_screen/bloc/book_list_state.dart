// ignore_for_file: must_be_immutable

part of 'book_list_bloc.dart';

/// Represents the state of BookList in the application.
class BookListState extends Equatable {
  BookListState({this.bookListModelObj});

  BookListModel? bookListModelObj;

  @override
  List<Object?> get props => [
        bookListModelObj,
      ];
  BookListState copyWith({BookListModel? bookListModelObj}) {
    return BookListState(
      bookListModelObj: bookListModelObj ?? this.bookListModelObj,
    );
  }
}

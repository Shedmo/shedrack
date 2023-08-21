// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

/// Represents the state of Search in the application.
class SearchState extends Equatable {
  SearchState({
    this.arrowtwoController,
    this.searchModelObj,
  });

  TextEditingController? arrowtwoController;

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [
        arrowtwoController,
        searchModelObj,
      ];
  SearchState copyWith({
    TextEditingController? arrowtwoController,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      arrowtwoController: arrowtwoController ?? this.arrowtwoController,
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}

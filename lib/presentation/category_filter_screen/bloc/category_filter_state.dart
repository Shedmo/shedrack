// ignore_for_file: must_be_immutable

part of 'category_filter_bloc.dart';

/// Represents the state of CategoryFilter in the application.
class CategoryFilterState extends Equatable {
  CategoryFilterState({this.categoryFilterModelObj});

  CategoryFilterModel? categoryFilterModelObj;

  @override
  List<Object?> get props => [
        categoryFilterModelObj,
      ];
  CategoryFilterState copyWith({CategoryFilterModel? categoryFilterModelObj}) {
    return CategoryFilterState(
      categoryFilterModelObj:
          categoryFilterModelObj ?? this.categoryFilterModelObj,
    );
  }
}

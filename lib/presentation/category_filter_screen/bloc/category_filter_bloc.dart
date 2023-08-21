import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/category_filter_screen/models/category_filter_model.dart';
part 'category_filter_event.dart';
part 'category_filter_state.dart';

/// A bloc that manages the state of a CategoryFilter according to the event that is dispatched to it.
class CategoryFilterBloc
    extends Bloc<CategoryFilterEvent, CategoryFilterState> {
  CategoryFilterBloc(CategoryFilterState initialState) : super(initialState) {
    on<CategoryFilterInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoryFilterInitialEvent event,
    Emitter<CategoryFilterState> emit,
  ) async {}
}

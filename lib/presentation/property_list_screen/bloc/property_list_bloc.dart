import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/property_list_screen/models/property_list_model.dart';
part 'property_list_event.dart';
part 'property_list_state.dart';

/// A bloc that manages the state of a PropertyList according to the event that is dispatched to it.
class PropertyListBloc extends Bloc<PropertyListEvent, PropertyListState> {
  PropertyListBloc(PropertyListState initialState) : super(initialState) {
    on<PropertyListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PropertyListInitialEvent event,
    Emitter<PropertyListState> emit,
  ) async {
    emit(state.copyWith(filterController: TextEditingController()));
  }
}

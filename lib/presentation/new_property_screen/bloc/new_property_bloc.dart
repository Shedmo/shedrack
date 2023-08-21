import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/new_property_screen/models/new_property_model.dart';
part 'new_property_event.dart';
part 'new_property_state.dart';

/// A bloc that manages the state of a NewProperty according to the event that is dispatched to it.
class NewPropertyBloc extends Bloc<NewPropertyEvent, NewPropertyState> {
  NewPropertyBloc(NewPropertyState initialState) : super(initialState) {
    on<NewPropertyInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
    NewPropertyInitialEvent event,
    Emitter<NewPropertyState> emit,
  ) async {
    emit(state.copyWith(propertyvalueController: TextEditingController()));
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<NewPropertyState> emit,
  ) {
    emit(state.copyWith(
        newPropertyModelObj: state.newPropertyModelObj?.copyWith(
      checkindateTxt: event.date,
    )));
  }
}

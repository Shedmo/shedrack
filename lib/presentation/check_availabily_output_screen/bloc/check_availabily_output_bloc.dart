import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/check_availabily_output_screen/models/check_availabily_output_model.dart';
part 'check_availabily_output_event.dart';
part 'check_availabily_output_state.dart';

/// A bloc that manages the state of a CheckAvailabilyOutput according to the event that is dispatched to it.
class CheckAvailabilyOutputBloc
    extends Bloc<CheckAvailabilyOutputEvent, CheckAvailabilyOutputState> {
  CheckAvailabilyOutputBloc(CheckAvailabilyOutputState initialState)
      : super(initialState) {
    on<CheckAvailabilyOutputInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckAvailabilyOutputInitialEvent event,
    Emitter<CheckAvailabilyOutputState> emit,
  ) async {}
}

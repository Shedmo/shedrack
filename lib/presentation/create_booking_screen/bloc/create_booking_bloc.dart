import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/create_booking_screen/models/create_booking_model.dart';
part 'create_booking_event.dart';
part 'create_booking_state.dart';

/// A bloc that manages the state of a CreateBooking according to the event that is dispatched to it.
class CreateBookingBloc extends Bloc<CreateBookingEvent, CreateBookingState> {
  CreateBookingBloc(CreateBookingState initialState) : super(initialState) {
    on<CreateBookingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateBookingInitialEvent event,
    Emitter<CreateBookingState> emit,
  ) async {
    emit(state.copyWith(
        dateController: TextEditingController(),
        nameController: TextEditingController(),
        downloadtwoController: TextEditingController()));
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/create_property_screen/models/create_property_model.dart';
part 'create_property_event.dart';
part 'create_property_state.dart';

/// A bloc that manages the state of a CreateProperty according to the event that is dispatched to it.
class CreatePropertyBloc
    extends Bloc<CreatePropertyEvent, CreatePropertyState> {
  CreatePropertyBloc(CreatePropertyState initialState) : super(initialState) {
    on<CreatePropertyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreatePropertyInitialEvent event,
    Emitter<CreatePropertyState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        downloadController: TextEditingController(),
        locationController: TextEditingController(),
        locationController1: TextEditingController(),
        phoneNumberController: TextEditingController(),
        phoneNumberController1: TextEditingController(),
        emailController: TextEditingController(),
        groupSeventyEigController: TextEditingController(),
        groupEightyThreController: TextEditingController(),
        groupEightyTwoController: TextEditingController()));
  }
}

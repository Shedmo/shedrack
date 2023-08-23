import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/add_client_screen/models/add_client_model.dart';
part 'add_client_event.dart';
part 'add_client_state.dart';

/// A bloc that manages the state of a AddClient according to the event that is dispatched to it.
class AddClientBloc extends Bloc<AddClientEvent, AddClientState> {
  AddClientBloc(AddClientState initialState) : super(initialState) {
    on<AddClientInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
    AddClientInitialEvent event,
    Emitter<AddClientState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        phoneController: TextEditingController(),
        emailController: TextEditingController(),
        addressController: TextEditingController(),
        identitynumberController: TextEditingController(),
        placeofbirthController: TextEditingController(),
        occupationvalueController: TextEditingController(),
        tribevalueoneController: TextEditingController()));
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<AddClientState> emit,
  ) {
    emit(state.copyWith(
        addClientModelObj: state.addClientModelObj?.copyWith(
      dateofbirthTxt: event.date,
    )));
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/add_room_one_screen/models/add_room_one_model.dart';
part 'add_room_one_event.dart';
part 'add_room_one_state.dart';

/// A bloc that manages the state of a AddRoomOne according to the event that is dispatched to it.
class AddRoomOneBloc extends Bloc<AddRoomOneEvent, AddRoomOneState> {
  AddRoomOneBloc(AddRoomOneState initialState) : super(initialState) {
    on<AddRoomOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddRoomOneInitialEvent event,
    Emitter<AddRoomOneState> emit,
  ) async {
    emit(state.copyWith(
        roomtypeoneController: TextEditingController(),
        nameController: TextEditingController(),
        priceController: TextEditingController(),
        totalvalueoneController: TextEditingController()));
  }
}

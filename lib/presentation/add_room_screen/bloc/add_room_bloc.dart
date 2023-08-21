import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/add_room_screen/models/add_room_model.dart';
part 'add_room_event.dart';
part 'add_room_state.dart';

/// A bloc that manages the state of a AddRoom according to the event that is dispatched to it.
class AddRoomBloc extends Bloc<AddRoomEvent, AddRoomState> {
  AddRoomBloc(AddRoomState initialState) : super(initialState) {
    on<AddRoomInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddRoomInitialEvent event,
    Emitter<AddRoomState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      typevalueoneController: TextEditingController(),
      priceController: TextEditingController(),
      groupThirteenController: TextEditingController(),
    ));
  }
}

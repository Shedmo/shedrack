import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/add_new_room_type_screen/models/add_new_room_type_model.dart';
part 'add_new_room_type_event.dart';
part 'add_new_room_type_state.dart';

/// A bloc that manages the state of a AddNewRoomType according to the event that is dispatched to it.
class AddNewRoomTypeBloc
    extends Bloc<AddNewRoomTypeEvent, AddNewRoomTypeState> {
  AddNewRoomTypeBloc(AddNewRoomTypeState initialState) : super(initialState) {
    on<AddNewRoomTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddNewRoomTypeInitialEvent event,
    Emitter<AddNewRoomTypeState> emit,
  ) async {
    emit(state.copyWith(nameController: TextEditingController()));
  }
}

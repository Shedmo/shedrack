import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/room_type_list_screen/models/room_type_list_model.dart';
part 'room_type_list_event.dart';
part 'room_type_list_state.dart';

/// A bloc that manages the state of a RoomTypeList according to the event that is dispatched to it.
class RoomTypeListBloc extends Bloc<RoomTypeListEvent, RoomTypeListState> {
  RoomTypeListBloc(RoomTypeListState initialState) : super(initialState) {
    on<RoomTypeListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RoomTypeListInitialEvent event,
    Emitter<RoomTypeListState> emit,
  ) async {}
}

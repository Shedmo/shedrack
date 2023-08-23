import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/hover_one_screen/models/hover_one_model.dart';
part 'hover_one_event.dart';
part 'hover_one_state.dart';

/// A bloc that manages the state of a HoverOne according to the event that is dispatched to it.
class HoverOneBloc extends Bloc<HoverOneEvent, HoverOneState> {
  HoverOneBloc(HoverOneState initialState) : super(initialState) {
    on<HoverOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HoverOneInitialEvent event,
    Emitter<HoverOneState> emit,
  ) async {
    emit(state.copyWith(dhakadhakaController: TextEditingController()));
  }
}

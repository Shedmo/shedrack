import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:booking/presentation/client_list_screen/models/client_list_model.dart';
part 'client_list_event.dart';
part 'client_list_state.dart';

/// A bloc that manages the state of a ClientList according to the event that is dispatched to it.
class ClientListBloc extends Bloc<ClientListEvent, ClientListState> {
  ClientListBloc(ClientListState initialState) : super(initialState) {
    on<ClientListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ClientListInitialEvent event,
    Emitter<ClientListState> emit,
  ) async {}
}

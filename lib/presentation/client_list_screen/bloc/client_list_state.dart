// ignore_for_file: must_be_immutable

part of 'client_list_bloc.dart';

/// Represents the state of ClientList in the application.
class ClientListState extends Equatable {
  ClientListState({this.clientListModelObj});

  ClientListModel? clientListModelObj;

  @override
  List<Object?> get props => [
        clientListModelObj,
      ];
  ClientListState copyWith({ClientListModel? clientListModelObj}) {
    return ClientListState(
      clientListModelObj: clientListModelObj ?? this.clientListModelObj,
    );
  }
}

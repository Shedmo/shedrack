// ignore_for_file: must_be_immutable

part of 'add_room_bloc.dart';

/// Represents the state of AddRoom in the application.
class AddRoomState extends Equatable {
  AddRoomState({
    this.nameController,
    this.typevalueoneController,
    this.priceController,
    this.group304Controller,
    this.addRoomModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? typevalueoneController;

  TextEditingController? priceController;

  TextEditingController? group304Controller;

  AddRoomModel? addRoomModelObj;

  @override
  List<Object?> get props => [
        nameController,
        typevalueoneController,
        priceController,
        group304Controller,
        addRoomModelObj,
      ];
  AddRoomState copyWith({
    TextEditingController? nameController,
    TextEditingController? typevalueoneController,
    TextEditingController? priceController,
    TextEditingController? group304Controller,
    AddRoomModel? addRoomModelObj,
  }) {
    return AddRoomState(
      nameController: nameController ?? this.nameController,
      typevalueoneController:
          typevalueoneController ?? this.typevalueoneController,
      priceController: priceController ?? this.priceController,
      group304Controller: group304Controller ?? this.group304Controller,
      addRoomModelObj: addRoomModelObj ?? this.addRoomModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'add_room_bloc.dart';

/// Represents the state of AddRoom in the application.
class AddRoomState extends Equatable {
  AddRoomState({
    this.nameController,
    this.typevalueoneController,
    this.priceController,
    this.groupThirteenController,
    this.addRoomModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? typevalueoneController;

  TextEditingController? priceController;

  TextEditingController? groupThirteenController;

  AddRoomModel? addRoomModelObj;

  @override
  List<Object?> get props => [
        nameController,
        typevalueoneController,
        priceController,
        groupThirteenController,
        addRoomModelObj,
      ];
  AddRoomState copyWith({
    TextEditingController? nameController,
    TextEditingController? typevalueoneController,
    TextEditingController? priceController,
    TextEditingController? groupThirteenController,
    AddRoomModel? addRoomModelObj,
  }) {
    return AddRoomState(
      nameController: nameController ?? this.nameController,
      typevalueoneController:
          typevalueoneController ?? this.typevalueoneController,
      priceController: priceController ?? this.priceController,
      groupThirteenController:
          groupThirteenController ?? this.groupThirteenController,
      addRoomModelObj: addRoomModelObj ?? this.addRoomModelObj,
    );
  }
}

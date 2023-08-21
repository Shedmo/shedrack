// ignore_for_file: must_be_immutable

part of 'add_room_one_bloc.dart';

/// Represents the state of AddRoomOne in the application.
class AddRoomOneState extends Equatable {
  AddRoomOneState({
    this.roomtypeoneController,
    this.nameController,
    this.priceController,
    this.totalvalueoneController,
    this.addRoomOneModelObj,
  });

  TextEditingController? roomtypeoneController;

  TextEditingController? nameController;

  TextEditingController? priceController;

  TextEditingController? totalvalueoneController;

  AddRoomOneModel? addRoomOneModelObj;

  @override
  List<Object?> get props => [
        roomtypeoneController,
        nameController,
        priceController,
        totalvalueoneController,
        addRoomOneModelObj,
      ];
  AddRoomOneState copyWith({
    TextEditingController? roomtypeoneController,
    TextEditingController? nameController,
    TextEditingController? priceController,
    TextEditingController? totalvalueoneController,
    AddRoomOneModel? addRoomOneModelObj,
  }) {
    return AddRoomOneState(
      roomtypeoneController:
          roomtypeoneController ?? this.roomtypeoneController,
      nameController: nameController ?? this.nameController,
      priceController: priceController ?? this.priceController,
      totalvalueoneController:
          totalvalueoneController ?? this.totalvalueoneController,
      addRoomOneModelObj: addRoomOneModelObj ?? this.addRoomOneModelObj,
    );
  }
}

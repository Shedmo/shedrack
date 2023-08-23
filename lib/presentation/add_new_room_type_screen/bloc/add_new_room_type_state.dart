// ignore_for_file: must_be_immutable

part of 'add_new_room_type_bloc.dart';

/// Represents the state of AddNewRoomType in the application.
class AddNewRoomTypeState extends Equatable {
  AddNewRoomTypeState({
    this.nameController,
    this.addNewRoomTypeModelObj,
  });

  TextEditingController? nameController;

  AddNewRoomTypeModel? addNewRoomTypeModelObj;

  @override
  List<Object?> get props => [
        nameController,
        addNewRoomTypeModelObj,
      ];
  AddNewRoomTypeState copyWith({
    TextEditingController? nameController,
    AddNewRoomTypeModel? addNewRoomTypeModelObj,
  }) {
    return AddNewRoomTypeState(
      nameController: nameController ?? this.nameController,
      addNewRoomTypeModelObj:
          addNewRoomTypeModelObj ?? this.addNewRoomTypeModelObj,
    );
  }
}

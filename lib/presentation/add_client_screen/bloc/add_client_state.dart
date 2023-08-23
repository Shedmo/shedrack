// ignore_for_file: must_be_immutable

part of 'add_client_bloc.dart';

/// Represents the state of AddClient in the application.
class AddClientState extends Equatable {
  AddClientState({
    this.nameController,
    this.phoneController,
    this.emailController,
    this.addressController,
    this.identitynumberController,
    this.placeofbirthController,
    this.occupationvalueController,
    this.tribevalueoneController,
    this.addClientModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneController;

  TextEditingController? emailController;

  TextEditingController? addressController;

  TextEditingController? identitynumberController;

  TextEditingController? placeofbirthController;

  TextEditingController? occupationvalueController;

  TextEditingController? tribevalueoneController;

  AddClientModel? addClientModelObj;

  @override
  List<Object?> get props => [
        nameController,
        phoneController,
        emailController,
        addressController,
        identitynumberController,
        placeofbirthController,
        occupationvalueController,
        tribevalueoneController,
        addClientModelObj,
      ];
  AddClientState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneController,
    TextEditingController? emailController,
    TextEditingController? addressController,
    TextEditingController? identitynumberController,
    TextEditingController? placeofbirthController,
    TextEditingController? occupationvalueController,
    TextEditingController? tribevalueoneController,
    AddClientModel? addClientModelObj,
  }) {
    return AddClientState(
      nameController: nameController ?? this.nameController,
      phoneController: phoneController ?? this.phoneController,
      emailController: emailController ?? this.emailController,
      addressController: addressController ?? this.addressController,
      identitynumberController:
          identitynumberController ?? this.identitynumberController,
      placeofbirthController:
          placeofbirthController ?? this.placeofbirthController,
      occupationvalueController:
          occupationvalueController ?? this.occupationvalueController,
      tribevalueoneController:
          tribevalueoneController ?? this.tribevalueoneController,
      addClientModelObj: addClientModelObj ?? this.addClientModelObj,
    );
  }
}

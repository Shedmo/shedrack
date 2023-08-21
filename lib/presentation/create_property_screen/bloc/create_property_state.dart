// ignore_for_file: must_be_immutable

part of 'create_property_bloc.dart';

/// Represents the state of CreateProperty in the application.
class CreatePropertyState extends Equatable {
  CreatePropertyState({
    this.nameController,
    this.downloadController,
    this.locationController,
    this.locationController1,
    this.phoneNumberController,
    this.phoneNumberController1,
    this.emailController,
    this.groupSeventyEigController,
    this.groupEightyThreController,
    this.groupEightyTwoController,
    this.createPropertyModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? downloadController;

  TextEditingController? locationController;

  TextEditingController? locationController1;

  TextEditingController? phoneNumberController;

  TextEditingController? phoneNumberController1;

  TextEditingController? emailController;

  TextEditingController? groupSeventyEigController;

  TextEditingController? groupEightyThreController;

  TextEditingController? groupEightyTwoController;

  CreatePropertyModel? createPropertyModelObj;

  @override
  List<Object?> get props => [
        nameController,
        downloadController,
        locationController,
        locationController1,
        phoneNumberController,
        phoneNumberController1,
        emailController,
        groupSeventyEigController,
        groupEightyThreController,
        groupEightyTwoController,
        createPropertyModelObj,
      ];
  CreatePropertyState copyWith({
    TextEditingController? nameController,
    TextEditingController? downloadController,
    TextEditingController? locationController,
    TextEditingController? locationController1,
    TextEditingController? phoneNumberController,
    TextEditingController? phoneNumberController1,
    TextEditingController? emailController,
    TextEditingController? groupSeventyEigController,
    TextEditingController? groupEightyThreController,
    TextEditingController? groupEightyTwoController,
    CreatePropertyModel? createPropertyModelObj,
  }) {
    return CreatePropertyState(
      nameController: nameController ?? this.nameController,
      downloadController: downloadController ?? this.downloadController,
      locationController: locationController ?? this.locationController,
      locationController1: locationController1 ?? this.locationController1,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      phoneNumberController1:
          phoneNumberController1 ?? this.phoneNumberController1,
      emailController: emailController ?? this.emailController,
      groupSeventyEigController:
          groupSeventyEigController ?? this.groupSeventyEigController,
      groupEightyThreController:
          groupEightyThreController ?? this.groupEightyThreController,
      groupEightyTwoController:
          groupEightyTwoController ?? this.groupEightyTwoController,
      createPropertyModelObj:
          createPropertyModelObj ?? this.createPropertyModelObj,
    );
  }
}

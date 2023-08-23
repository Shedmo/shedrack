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
    this.group369Controller,
    this.group374Controller,
    this.group373Controller,
    this.createPropertyModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? downloadController;

  TextEditingController? locationController;

  TextEditingController? locationController1;

  TextEditingController? phoneNumberController;

  TextEditingController? phoneNumberController1;

  TextEditingController? emailController;

  TextEditingController? group369Controller;

  TextEditingController? group374Controller;

  TextEditingController? group373Controller;

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
        group369Controller,
        group374Controller,
        group373Controller,
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
    TextEditingController? group369Controller,
    TextEditingController? group374Controller,
    TextEditingController? group373Controller,
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
      group369Controller: group369Controller ?? this.group369Controller,
      group374Controller: group374Controller ?? this.group374Controller,
      group373Controller: group373Controller ?? this.group373Controller,
      createPropertyModelObj:
          createPropertyModelObj ?? this.createPropertyModelObj,
    );
  }
}

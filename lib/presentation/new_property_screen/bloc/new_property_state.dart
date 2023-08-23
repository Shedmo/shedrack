// ignore_for_file: must_be_immutable

part of 'new_property_bloc.dart';

/// Represents the state of NewProperty in the application.
class NewPropertyState extends Equatable {
  NewPropertyState({
    this.propertyvalueController,
    this.newPropertyModelObj,
  });

  TextEditingController? propertyvalueController;

  NewPropertyModel? newPropertyModelObj;

  @override
  List<Object?> get props => [
        propertyvalueController,
        newPropertyModelObj,
      ];
  NewPropertyState copyWith({
    TextEditingController? propertyvalueController,
    NewPropertyModel? newPropertyModelObj,
  }) {
    return NewPropertyState(
      propertyvalueController:
          propertyvalueController ?? this.propertyvalueController,
      newPropertyModelObj: newPropertyModelObj ?? this.newPropertyModelObj,
    );
  }
}

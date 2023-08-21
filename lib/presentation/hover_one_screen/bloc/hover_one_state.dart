// ignore_for_file: must_be_immutable

part of 'hover_one_bloc.dart';

/// Represents the state of HoverOne in the application.
class HoverOneState extends Equatable {
  HoverOneState({
    this.dhakadhakaController,
    this.hoverOneModelObj,
  });

  TextEditingController? dhakadhakaController;

  HoverOneModel? hoverOneModelObj;

  @override
  List<Object?> get props => [
        dhakadhakaController,
        hoverOneModelObj,
      ];
  HoverOneState copyWith({
    TextEditingController? dhakadhakaController,
    HoverOneModel? hoverOneModelObj,
  }) {
    return HoverOneState(
      dhakadhakaController: dhakadhakaController ?? this.dhakadhakaController,
      hoverOneModelObj: hoverOneModelObj ?? this.hoverOneModelObj,
    );
  }
}

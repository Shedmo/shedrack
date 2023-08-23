// ignore_for_file: must_be_immutable

part of 'check_availabily_output_bloc.dart';

/// Represents the state of CheckAvailabilyOutput in the application.
class CheckAvailabilyOutputState extends Equatable {
  CheckAvailabilyOutputState({this.checkAvailabilyOutputModelObj});

  CheckAvailabilyOutputModel? checkAvailabilyOutputModelObj;

  @override
  List<Object?> get props => [
        checkAvailabilyOutputModelObj,
      ];
  CheckAvailabilyOutputState copyWith(
      {CheckAvailabilyOutputModel? checkAvailabilyOutputModelObj}) {
    return CheckAvailabilyOutputState(
      checkAvailabilyOutputModelObj:
          checkAvailabilyOutputModelObj ?? this.checkAvailabilyOutputModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'create_booking_bloc.dart';

/// Represents the state of CreateBooking in the application.
class CreateBookingState extends Equatable {
  CreateBookingState({
    this.dateController,
    this.nameController,
    this.downloadtwoController,
    this.createBookingModelObj,
  });

  TextEditingController? dateController;

  TextEditingController? nameController;

  TextEditingController? downloadtwoController;

  CreateBookingModel? createBookingModelObj;

  @override
  List<Object?> get props => [
        dateController,
        nameController,
        downloadtwoController,
        createBookingModelObj,
      ];
  CreateBookingState copyWith({
    TextEditingController? dateController,
    TextEditingController? nameController,
    TextEditingController? downloadtwoController,
    CreateBookingModel? createBookingModelObj,
  }) {
    return CreateBookingState(
      dateController: dateController ?? this.dateController,
      nameController: nameController ?? this.nameController,
      downloadtwoController:
          downloadtwoController ?? this.downloadtwoController,
      createBookingModelObj:
          createBookingModelObj ?? this.createBookingModelObj,
    );
  }
}

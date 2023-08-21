// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [add_client_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddClientModel extends Equatable {
  AddClientModel({
    this.selectedDateofbirthTxt,
    this.dateofbirthTxt = "",
  });

  DateTime? selectedDateofbirthTxt;

  String dateofbirthTxt;

  AddClientModel copyWith({
    DateTime? selectedDateofbirthTxt,
    String? dateofbirthTxt,
  }) {
    return AddClientModel(
      selectedDateofbirthTxt:
          selectedDateofbirthTxt ?? this.selectedDateofbirthTxt,
      dateofbirthTxt: dateofbirthTxt ?? this.dateofbirthTxt,
    );
  }

  @override
  List<Object?> get props => [selectedDateofbirthTxt, dateofbirthTxt];
}

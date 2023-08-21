// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [new_property_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewPropertyModel extends Equatable {
  NewPropertyModel({
    this.selectedCheckindateTxt,
    this.checkindateTxt = "",
  });

  DateTime? selectedCheckindateTxt;

  String checkindateTxt;

  NewPropertyModel copyWith({
    DateTime? selectedCheckindateTxt,
    String? checkindateTxt,
  }) {
    return NewPropertyModel(
      selectedCheckindateTxt:
          selectedCheckindateTxt ?? this.selectedCheckindateTxt,
      checkindateTxt: checkindateTxt ?? this.checkindateTxt,
    );
  }

  @override
  List<Object?> get props => [selectedCheckindateTxt, checkindateTxt];
}

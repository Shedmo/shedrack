// ignore_for_file: must_be_immutable

part of 'property_list_bloc.dart';

/// Represents the state of PropertyList in the application.
class PropertyListState extends Equatable {
  PropertyListState({
    this.filterController,
    this.propertyListModelObj,
  });

  TextEditingController? filterController;

  PropertyListModel? propertyListModelObj;

  @override
  List<Object?> get props => [
        filterController,
        propertyListModelObj,
      ];
  PropertyListState copyWith({
    TextEditingController? filterController,
    PropertyListModel? propertyListModelObj,
  }) {
    return PropertyListState(
      filterController: filterController ?? this.filterController,
      propertyListModelObj: propertyListModelObj ?? this.propertyListModelObj,
    );
  }
}

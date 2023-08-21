// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'resortprofile_item_model.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel extends Equatable {
  SearchModel({this.resortprofileItemList = const []});

  List<ResortprofileItemModel> resortprofileItemList;

  SearchModel copyWith({List<ResortprofileItemModel>? resortprofileItemList}) {
    return SearchModel(
      resortprofileItemList:
          resortprofileItemList ?? this.resortprofileItemList,
    );
  }

  @override
  List<Object?> get props => [resortprofileItemList];
}

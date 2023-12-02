// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'a_item_model.dart';
import '../../../core/app_export.dart';
import 'finddonor_item_model.dart';

/// This class defines the variables used in the [find_donor_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FindDonorModel extends Equatable {
  FindDonorModel({
    this.aItemList = const [],
    this.finddonorItemList = const [],
  }) {}

  List<AItemModel> aItemList;

  List<FinddonorItemModel> finddonorItemList;

  FindDonorModel copyWith({
    List<AItemModel>? aItemList,
    List<FinddonorItemModel>? finddonorItemList,
  }) {
    return FindDonorModel(
      aItemList: aItemList ?? this.aItemList,
      finddonorItemList: finddonorItemList ?? this.finddonorItemList,
    );
  }

  @override
  List<Object?> get props => [aItemList, finddonorItemList];
}

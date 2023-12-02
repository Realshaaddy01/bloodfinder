// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'redcross_item_model.dart';
import '../../../core/app_export.dart';
import 'findhospital_item_model.dart';

/// This class defines the variables used in the [find_hospital_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FindHospitalModel extends Equatable {
  FindHospitalModel({
    this.redcrossItemList = const [],
    this.findhospitalItemList = const [],
  }) {}

  List<RedcrossItemModel> redcrossItemList;

  List<FindhospitalItemModel> findhospitalItemList;

  FindHospitalModel copyWith({
    List<RedcrossItemModel>? redcrossItemList,
    List<FindhospitalItemModel>? findhospitalItemList,
  }) {
    return FindHospitalModel(
      redcrossItemList: redcrossItemList ?? this.redcrossItemList,
      findhospitalItemList: findhospitalItemList ?? this.findhospitalItemList,
    );
  }

  @override
  List<Object?> get props => [redcrossItemList, findhospitalItemList];
}

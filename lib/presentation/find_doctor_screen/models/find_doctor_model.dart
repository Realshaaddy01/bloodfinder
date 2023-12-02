// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'time_item_model.dart';
import 'contact_item_model.dart';

/// This class defines the variables used in the [find_doctor_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FindDoctorModel extends Equatable {
  FindDoctorModel({
    this.timeItemList = const [],
    this.contactItemList = const [],
  }) {}

  List<TimeItemModel> timeItemList;

  List<ContactItemModel> contactItemList;

  FindDoctorModel copyWith({
    List<TimeItemModel>? timeItemList,
    List<ContactItemModel>? contactItemList,
  }) {
    return FindDoctorModel(
      timeItemList: timeItemList ?? this.timeItemList,
      contactItemList: contactItemList ?? this.contactItemList,
    );
  }

  @override
  List<Object?> get props => [timeItemList, contactItemList];
}

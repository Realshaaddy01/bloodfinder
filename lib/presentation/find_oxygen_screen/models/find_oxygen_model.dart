// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'findoxygen_item_model.dart';

/// This class defines the variables used in the [find_oxygen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FindOxygenModel extends Equatable {
  FindOxygenModel({this.findoxygenItemList = const []}) {}

  List<FindoxygenItemModel> findoxygenItemList;

  FindOxygenModel copyWith({List<FindoxygenItemModel>? findoxygenItemList}) {
    return FindOxygenModel(
      findoxygenItemList: findoxygenItemList ?? this.findoxygenItemList,
    );
  }

  @override
  List<Object?> get props => [findoxygenItemList];
}

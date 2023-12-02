// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [redcross_item_widget] screen.
class RedcrossItemModel extends Equatable {
  RedcrossItemModel({
    this.redCross,
    this.isSelected,
  }) {
    redCross = redCross ?? "Red Cross";
    isSelected = isSelected ?? false;
  }

  String? redCross;

  bool? isSelected;

  RedcrossItemModel copyWith({
    String? redCross,
    bool? isSelected,
  }) {
    return RedcrossItemModel(
      redCross: redCross ?? this.redCross,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [redCross, isSelected];
}

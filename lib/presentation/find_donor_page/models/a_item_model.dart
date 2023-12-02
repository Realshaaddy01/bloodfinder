// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [a_item_widget] screen.
class AItemModel extends Equatable {
  AItemModel({
    this.a,
    this.isSelected,
  }) {
    a = a ?? "A+";
    isSelected = isSelected ?? false;
  }

  String? a;

  bool? isSelected;

  AItemModel copyWith({
    String? a,
    bool? isSelected,
  }) {
    return AItemModel(
      a: a ?? this.a,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [a, isSelected];
}

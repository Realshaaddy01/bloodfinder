import '../models/a_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AItemWidget extends StatelessWidget {
  AItemWidget(
    this.aItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  AItemModel aItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        aItemModelObj.a!,
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'Mali',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (aItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.red700,
      shape: (aItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                15.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                15.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}

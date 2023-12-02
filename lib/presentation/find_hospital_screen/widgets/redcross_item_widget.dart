import '../models/redcross_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RedcrossItemWidget extends StatelessWidget {
  RedcrossItemWidget(
    this.redcrossItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  RedcrossItemModel redcrossItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        redcrossItemModelObj.redCross!,
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'Mali',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (redcrossItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: theme.colorScheme.primary,
      shape: (redcrossItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.black900.withOpacity(0.6),
                width: 1.h,
              ),
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

import '../models/time_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TimeItemWidget extends StatelessWidget {
  TimeItemWidget(
    this.timeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TimeItemModel timeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        children: [
          Text(
            timeItemModelObj.time!,
            style: CustomTextStyles.bodySmallMaliLight,
          ),
          SizedBox(height: 2.v),
          Text(
            timeItemModelObj.time1!,
            style: CustomTextStyles.bodySmallMaliLight,
          ),
        ],
      ),
    );
  }
}

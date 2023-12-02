import '../models/findoxygen_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FindoxygenItemWidget extends StatelessWidget {
  FindoxygenItemWidget(
    this.findoxygenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FindoxygenItemModel findoxygenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgHospitalBuilding,
              height: 42.v,
              width: 39.h,
              margin: EdgeInsets.only(bottom: 8.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 2.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    findoxygenItemModelObj.tilGangaHospital!,
                    style: CustomTextStyles.titleLargeBold,
                  ),
                  Text(
                    findoxygenItemModelObj.newRoadKathanduNepal!,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            Container(
              width: 98.h,
              margin: EdgeInsets.only(
                left: 23.h,
                bottom: 6.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Text(
                findoxygenItemModelObj.contact!,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

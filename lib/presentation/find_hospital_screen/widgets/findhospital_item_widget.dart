import '../models/findhospital_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FindhospitalItemWidget extends StatelessWidget {
  FindhospitalItemWidget(
    this.findhospitalItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FindhospitalItemModel findhospitalItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59.v,
      width: 398.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 66.h,
                bottom: 8.v,
              ),
              child: Text(
                findhospitalItemModelObj.kausaltarKathanduNepal!,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 66.h,
                top: 10.v,
              ),
              child: Text(
                findhospitalItemModelObj.cityCentreHospital!,
                style: CustomTextStyles.titleLargeBold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 21.v,
              width: 76.h,
              margin: EdgeInsets.only(right: 20.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      findhospitalItemModelObj.bookNow!,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      findhospitalItemModelObj.bookNow1!,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 36.v,
              width: 42.h,
              margin: EdgeInsets.only(
                left: 9.h,
                top: 8.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHospitalBuilding,
                    height: 36.v,
                    width: 42.h,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgHospitalBuilding,
                    height: 36.v,
                    width: 42.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 66.h,
                bottom: 8.v,
              ),
              child: Text(
                findhospitalItemModelObj.kausaltarKathanduNepal1!,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 66.h,
                top: 10.v,
              ),
              child: Text(
                findhospitalItemModelObj.cityCentreHospital1!,
                style: CustomTextStyles.titleLargeBold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHospitalBuilding,
                    height: 36.v,
                    width: 42.h,
                    margin: EdgeInsets.only(bottom: 7.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Column(
                      children: [
                        Text(
                          findhospitalItemModelObj.cityCentreHospital2!,
                          style: CustomTextStyles.titleLargeBold,
                        ),
                        Text(
                          findhospitalItemModelObj.kausaltarKathanduNepal2!,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 99.h,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 3.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Text(
                      findhospitalItemModelObj.contact!,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

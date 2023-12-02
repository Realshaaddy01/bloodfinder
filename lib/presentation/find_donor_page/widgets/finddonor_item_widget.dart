import '../models/finddonor_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FinddonorItemWidget extends StatelessWidget {
  FinddonorItemWidget(
    this.finddonorItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FinddonorItemModel finddonorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 1.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: finddonorItemModelObj?.username,
              height: 49.v,
              width: 55.h,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 3.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                bottom: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    finddonorItemModelObj.userName!,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    finddonorItemModelObj.kausaltarKathanduNepal!,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            CustomOutlinedButton(
              width: 99.h,
              text: "lbl_book_now".tr,
              margin: EdgeInsets.only(
                left: 19.h,
                top: 7.v,
                bottom: 3.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

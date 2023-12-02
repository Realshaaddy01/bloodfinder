import '../models/contact_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactItemWidget extends StatelessWidget {
  ContactItemWidget(
    this.contactItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ContactItemModel contactItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59.v,
      width: 398.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImageRemovebgPreview,
                    height: 44.v,
                    width: 48.h,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      top: 10.v,
                      bottom: 19.v,
                    ),
                    child: Text(
                      contactItemModelObj.civilHospitalKathmandu!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Spacer(),
                  CustomOutlinedButton(
                    height: 32.v,
                    width: 71.h,
                    text: "lbl_contact".tr,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      right: 1.h,
                      bottom: 10.v,
                    ),
                    buttonStyle: CustomButtonStyles.outlineBlackTL16,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 103.h),
              child: Text(
                contactItemModelObj.urologyandUrooncology!,
                style: CustomTextStyles.bodySmallMaliRegular,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 60.h),
              child: Text(
                contactItemModelObj.drMaheshBdr!,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 78.h,
                bottom: 13.v,
              ),
              child: Text(
                contactItemModelObj.time!,
                style: CustomTextStyles.bodySmallMaliLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

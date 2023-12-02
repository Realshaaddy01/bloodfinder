import '../find_doctor_screen/widgets/contact_item_widget.dart';
import '../find_doctor_screen/widgets/time_item_widget.dart';
import 'bloc/find_doctor_bloc.dart';
import 'models/contact_item_model.dart';
import 'models/find_doctor_model.dart';
import 'models/time_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/find_donor_page/find_donor_page.dart';
import 'package:flexyatra/widgets/custom_bottom_bar.dart';
import 'package:flexyatra/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FindDoctorScreen extends StatelessWidget {
  FindDoctorScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FindDoctorBloc>(
      create: (context) => FindDoctorBloc(FindDoctorState(
        findDoctorModelObj: FindDoctorModel(),
      ))
        ..add(FindDoctorInitialEvent()),
      child: FindDoctorScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 54.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.deepOrangeA700,
                ),
              ),
              SizedBox(height: 8.v),
              _buildHelloUserOne(context),
              SizedBox(height: 47.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Text(
                    "lbl_find_doctors".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              _buildSelectSpeciality(context),
              SizedBox(height: 80.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text(
                    "msg_available_doctors".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              _buildGeneralPhysician(context),
              SizedBox(height: 4.v),
              _buildContact(context),
              SizedBox(height: 6.v),
              _buildContact1(context),
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 38.h,
                    right: 51.h,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgNavHome,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Spacer(
                        flex: 34,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgBooked1,
                        height: 24.v,
                        width: 28.h,
                      ),
                      Spacer(
                        flex: 35,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgConversation1,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Spacer(
                        flex: 30,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgProfileUser1,
                        height: 24.v,
                        width: 28.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildHome(context),
              SizedBox(height: 17.v),
              Container(
                height: 54.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.deepOrangeA70001,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 13.h,
            right: 16.h,
          ),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHelloUserOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 49.v,
            width: 195.h,
            margin: EdgeInsets.only(top: 7.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_hello_user1".tr,
                      style: CustomTextStyles.titleLargeLexendTera,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 21.v,
                    width: 170.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_verified_online".tr,
                            style: CustomTextStyles.titleLargeLigconsolata,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_verified_online".tr,
                            style: CustomTextStyles.titleLargeLigconsolata,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVerified1,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_hello_user1".tr,
                      style: CustomTextStyles.titleLargeLexendTera,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVerified1,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
              ],
            ),
          ),
          Container(
            height: 42.v,
            width: 39.h,
            margin: EdgeInsets.only(bottom: 14.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAlarmBell1,
                  height: 42.v,
                  width: 39.h,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgAlarmBell1,
                  height: 42.v,
                  width: 39.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectSpeciality(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      text: "msg_select_speciality".tr,
      margin: EdgeInsets.only(
        left: 62.h,
        right: 58.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: theme.textTheme.headlineSmall!,
    );
  }

  /// Section Widget
  Widget _buildGeneralPhysician(BuildContext context) {
    return SizedBox(
      height: 59.v,
      width: 398.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 53.h),
              child: Text(
                "msg_general_physician".tr,
                style: CustomTextStyles.bodySmallMaliRegular,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 44.v,
              width: 48.h,
              margin: EdgeInsets.only(
                left: 5.h,
                top: 5.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImageRemovebgPreview,
                    height: 44.v,
                    width: 48.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 44.v,
                      width: 48.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImageRemovebgPreview,
                            height: 44.v,
                            width: 48.h,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImageRemovebgPreview,
                            height: 44.v,
                            width: 48.h,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 70.h,
                top: 18.v,
              ),
              child: Text(
                "msg_teaching_hospital".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 60.h),
              child: Text(
                "msg_dr_umid_kumar_shrestha".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 21.v,
              width: 63.h,
              margin: EdgeInsets.only(
                top: 16.v,
                right: 9.h,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_contact".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 21.v,
                      width: 63.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_contact".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_contact".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 78.h,
                bottom: 12.v,
              ),
              child: Text(
                "msg_mon_wed_and_fri".tr,
                style: CustomTextStyles.bodySmallMaliLight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 53.h),
              child: Text(
                "msg_general_physician".tr,
                style: CustomTextStyles.bodySmallMaliRegular,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 70.h,
                top: 18.v,
              ),
              child: Text(
                "msg_teaching_hospital".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 60.h),
              child: Text(
                "msg_dr_umid_kumar_shrestha".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 60.h,
                top: 34.v,
                right: 80.h,
              ),
              child: BlocSelector<FindDoctorBloc, FindDoctorState,
                  FindDoctorModel?>(
                selector: (state) => state.findDoctorModelObj,
                builder: (context, findDoctorModelObj) {
                  return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: 288.v,
                      );
                    },
                    itemCount: findDoctorModelObj?.timeItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      TimeItemModel model =
                          findDoctorModelObj?.timeItemList[index] ??
                              TimeItemModel();
                      return TimeItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 53.h),
              child: Text(
                "msg_general_physician".tr,
                style: CustomTextStyles.bodySmallMaliRegular,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 70.h,
                top: 18.v,
              ),
              child: Text(
                "msg_teaching_hospital".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 60.h),
              child: Text(
                "msg_dr_umid_kumar_shrestha".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
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
                      left: 17.h,
                      top: 11.v,
                      bottom: 18.v,
                    ),
                    child: Text(
                      "msg_teaching_hospital".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 71.h,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      right: 1.h,
                      bottom: 10.v,
                    ),
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Text(
                      "lbl_contact".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 53.h),
              child: Text(
                "msg_general_physician".tr,
                style: CustomTextStyles.bodySmallMaliRegular,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 60.h),
              child: Text(
                "msg_dr_umid_kumar_shrestha".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 78.h,
                bottom: 14.v,
              ),
              child: Text(
                "msg_mon_wed_and_fri".tr,
                style: CustomTextStyles.bodySmallMaliLight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContact(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      child: BlocSelector<FindDoctorBloc, FindDoctorState, FindDoctorModel?>(
        selector: (state) => state.findDoctorModelObj,
        builder: (context, findDoctorModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 6.v,
              );
            },
            itemCount: findDoctorModelObj?.contactItemList.length ?? 0,
            itemBuilder: (context, index) {
              ContactItemModel model =
                  findDoctorModelObj?.contactItemList[index] ??
                      ContactItemModel();
              return ContactItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContact1(BuildContext context) {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImageRemovebgPreview,
                    height: 44.v,
                    width: 48.h,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Container(
                    width: 71.h,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      right: 1.h,
                      bottom: 10.v,
                    ),
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Text(
                      "lbl_contact".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 69.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_ophthalmology".tr,
                      style: CustomTextStyles.bodySmallMali.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "msg_all_eye_related".tr,
                      style: CustomTextStyles.bodySmallMali.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 78.h,
                bottom: 12.v,
              ),
              child: Text(
                "msg_mon_wed_and_fri".tr,
                style: CustomTextStyles.bodySmallMaliLight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 36.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_home".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_booked_donor".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: Text(
              "lbl_message".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_profile".tr,
              style: CustomTextStyles.bodySmallLexendTera,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.findDonorPage;
      case BottomBarEnum.Bookeddonor:
        return "/";
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.findDonorPage:
        return FindDonorPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}

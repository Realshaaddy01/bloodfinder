import 'bloc/home_page_bloc.dart';
import 'models/home_page_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/find_donor_page/find_donor_page.dart';
import 'package:flexyatra/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageBloc>(
      create: (context) => HomePageBloc(HomePageState(
        homePageModelObj: HomePageModel(),
      ))
        ..add(HomePageInitialEvent()),
      child: HomePageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
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
                  SizedBox(height: 43.v),
                  _buildThirtySeven(context),
                  SizedBox(height: 41.v),
                  _buildFindBlood(context),
                  SizedBox(height: 24.v),
                  _buildFindDoctors(context),
                  SizedBox(height: 21.v),
                  _buildFindMedical(context),
                  Spacer(),
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
      },
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
  Widget _buildThirtySeven(BuildContext context) {
    return SizedBox(
      height: 226.v,
      width: 395.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHowToUseRed1,
            height: 226.v,
            width: 395.h,
            radius: BorderRadius.circular(
              30.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHowToUseRed1,
            height: 226.v,
            width: 395.h,
            radius: BorderRadius.circular(
              30.h,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFindBlood(BuildContext context) {
    return SizedBox(
      height: 63.v,
      width: 401.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 82.h),
            child: _buildThirtyFive(
              context,
              findDoctors: "lbl_find_blood".tr,
              sevenHundred: "lbl_800".tr,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBlood1,
                    height: 56.v,
                    width: 57.h,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Spacer(
                    flex: 29,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 16.v,
                      bottom: 18.v,
                    ),
                    child: Text(
                      "lbl_find_blood".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Spacer(
                    flex: 70,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 21.v,
                      right: 22.h,
                      bottom: 13.v,
                    ),
                    child: Text(
                      "lbl_800".tr,
                      style: theme.textTheme.titleLarge,
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

  /// Section Widget
  Widget _buildFindDoctors(BuildContext context) {
    return SizedBox(
      height: 63.v,
      width: 401.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 82.h),
            child: _buildThirtyFive(
              context,
              findDoctors: "lbl_find_doctors".tr,
              sevenHundred: "lbl_700".tr,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMedicalTeam1,
            height: 56.v,
            width: 61.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 14.h),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMedicalTeam1,
                    height: 56.v,
                    width: 61.h,
                    margin: EdgeInsets.only(bottom: 7.v),
                  ),
                  Spacer(
                    flex: 34,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.v),
                    child: Text(
                      "lbl_find_doctors".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Spacer(
                    flex: 65,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 26.v,
                      right: 27.h,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_700".tr,
                      style: theme.textTheme.titleLarge,
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

  /// Section Widget
  Widget _buildFindMedical(BuildContext context) {
    return SizedBox(
      height: 152.v,
      width: 401.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 36.h,
                vertical: 17.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder30,
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup38,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "lbl_find_medical".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 86.h),
                        child: Text(
                          "lbl_650".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 61.v),
                  Row(
                    children: [
                      Text(
                        "lbl_find_oxygen".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 88.h),
                        child: Text(
                          "lbl_100".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHospitalBuilding,
                    height: 57.adaptSize,
                    width: 57.adaptSize,
                  ),
                  SizedBox(height: 32.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgOxygenTank2,
                    height: 48.v,
                    width: 50.h,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 7.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder30,
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup38,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 29.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHospitalBuilding,
                          height: 57.adaptSize,
                          width: 57.adaptSize,
                        ),
                        Spacer(
                          flex: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 12.v,
                            bottom: 18.v,
                          ),
                          child: Text(
                            "lbl_find_medical".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Spacer(
                          flex: 64,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 14.v,
                            bottom: 16.v,
                          ),
                          child: Text(
                            "lbl_650".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.only(right: 31.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgOxygenTank2,
                          height: 48.v,
                          width: 50.h,
                        ),
                        Spacer(
                          flex: 38,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 12.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "lbl_find_oxygen".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Spacer(
                          flex: 61,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 12.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "lbl_100".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.v),
                ],
              ),
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

  /// Common widget
  Widget _buildThirtyFive(
    BuildContext context, {
    required String findDoctors,
    required String sevenHundred,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7.v),
            child: Text(
              findDoctors,
              style: theme.textTheme.titleLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              right: 5.h,
            ),
            child: Text(
              sevenHundred,
              style: theme.textTheme.titleLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
        ],
      ),
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

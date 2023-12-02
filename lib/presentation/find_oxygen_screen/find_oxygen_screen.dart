import '../find_oxygen_screen/widgets/findoxygen_item_widget.dart';
import 'bloc/find_oxygen_bloc.dart';
import 'models/find_oxygen_model.dart';
import 'models/findoxygen_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/find_donor_page/find_donor_page.dart';
import 'package:flexyatra/widgets/custom_bottom_bar.dart';
import 'package:flexyatra/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class FindOxygenScreen extends StatelessWidget {
  FindOxygenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FindOxygenBloc>(
      create: (context) => FindOxygenBloc(FindOxygenState(
        findOxygenModelObj: FindOxygenModel(),
      ))
        ..add(FindOxygenInitialEvent()),
      child: FindOxygenScreen(),
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 53.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "msg_select_your_location".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                height: 35.v,
                width: 335.h,
                margin: EdgeInsets.only(left: 28.h),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomIconButton(
                      height: 35.v,
                      width: 335.h,
                      alignment: Alignment.center,
                      child: CustomImageView(),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "lbl_search_location".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Text(
                  "msg_available_oxygen".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 6.v),
              _buildFindOxygen(context),
              SizedBox(height: 27.v),
              Padding(
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
    return Align(
      alignment: Alignment.center,
      child: Padding(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildFindOxygen(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: BlocSelector<FindOxygenBloc, FindOxygenState, FindOxygenModel?>(
          selector: (state) => state.findOxygenModelObj,
          builder: (context, findOxygenModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 10.v,
                );
              },
              itemCount: findOxygenModelObj?.findoxygenItemList.length ?? 0,
              itemBuilder: (context, index) {
                FindoxygenItemModel model =
                    findOxygenModelObj?.findoxygenItemList[index] ??
                        FindoxygenItemModel();
                return FindoxygenItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
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

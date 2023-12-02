import '../find_hospital_screen/widgets/findhospital_item_widget.dart';
import '../find_hospital_screen/widgets/redcross_item_widget.dart';
import 'bloc/find_hospital_bloc.dart';
import 'models/find_hospital_model.dart';
import 'models/findhospital_item_model.dart';
import 'models/redcross_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/find_donor_page/find_donor_page.dart';
import 'package:flexyatra/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class FindHospitalScreen extends StatelessWidget {
  FindHospitalScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FindHospitalBloc>(
      create: (context) => FindHospitalBloc(FindHospitalState(
        findHospitalModelObj: FindHospitalModel(),
      ))
        ..add(FindHospitalInitialEvent()),
      child: FindHospitalScreen(),
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
              _buildView(context),
              SizedBox(height: 7.v),
              _buildHelloUserOne(context),
              SizedBox(height: 49.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "msg_find_blood_banks".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildRedCross(context),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "msg_available_hospitals".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              _buildFIndHospital(context),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 39.h,
                  right: 50.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: 19.v),
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
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 55.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 54.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.deepOrangeA700,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 54.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.deepOrangeA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHelloUserOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.v,
                  width: 167.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_hello_user1".tr,
                          style: CustomTextStyles.titleLargeLexendTera,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_hello_user1".tr,
                          style: CustomTextStyles.titleLargeLexendTera,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
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
  Widget _buildRedCross(BuildContext context) {
    return BlocSelector<FindHospitalBloc, FindHospitalState,
        FindHospitalModel?>(
      selector: (state) => state.findHospitalModelObj,
      builder: (context, findHospitalModelObj) {
        return Wrap(
          runSpacing: 5.v,
          spacing: 5.h,
          children: List<Widget>.generate(
            findHospitalModelObj?.redcrossItemList.length ?? 0,
            (index) {
              RedcrossItemModel model =
                  findHospitalModelObj?.redcrossItemList[index] ??
                      RedcrossItemModel();

              return RedcrossItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<FindHospitalBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFIndHospital(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child:
          BlocSelector<FindHospitalBloc, FindHospitalState, FindHospitalModel?>(
        selector: (state) => state.findHospitalModelObj,
        builder: (context, findHospitalModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 9.v,
              );
            },
            itemCount: findHospitalModelObj?.findhospitalItemList.length ?? 0,
            itemBuilder: (context, index) {
              FindhospitalItemModel model =
                  findHospitalModelObj?.findhospitalItemList[index] ??
                      FindhospitalItemModel();
              return FindhospitalItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 35.h,
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

import '../find_donor_page/widgets/a_item_widget.dart';
import '../find_donor_page/widgets/finddonor_item_widget.dart';
import 'bloc/find_donor_bloc.dart';
import 'models/a_item_model.dart';
import 'models/find_donor_model.dart';
import 'models/finddonor_item_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FindDonorPage extends StatelessWidget {
  const FindDonorPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FindDonorBloc>(
      create: (context) => FindDonorBloc(FindDonorState(
        findDonorModelObj: FindDonorModel(),
      ))
        ..add(FindDonorInitialEvent()),
      child: FindDonorPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildView(context),
              SizedBox(height: 7.v),
              _buildHelloUserOne(context),
              SizedBox(height: 42.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "msg_pick_your_blood".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 10.v),
              _buildA(context),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "msg_select_when_needed".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 26.h,
                  right: 68.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 32.v,
                      width: 76.h,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          _buildNow(context),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 16.v,
                              width: 7.h,
                              margin: EdgeInsets.only(left: 6.h),
                              decoration: BoxDecoration(
                                color: appTheme.red70001,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildBookLater(context),
                  ],
                ),
              ),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "msg_available_donars".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 7.v),
              _buildFIndDonor(context),
              SizedBox(height: 29.v),
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
  Widget _buildA(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocSelector<FindDonorBloc, FindDonorState, FindDonorModel?>(
        selector: (state) => state.findDonorModelObj,
        builder: (context, findDonorModelObj) {
          return Wrap(
            runSpacing: 21.v,
            spacing: 21.h,
            children: List<Widget>.generate(
              findDonorModelObj?.aItemList.length ?? 0,
              (index) {
                AItemModel model =
                    findDonorModelObj?.aItemList[index] ?? AItemModel();

                return AItemWidget(
                  model,
                  onSelectedChipView: (value) {
                    context.read<FindDonorBloc>().add(
                        UpdateChipViewEvent(index: index, isSelected: value));
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocSelector<FindDonorBloc, FindDonorState, String?>(
        selector: (state) => state.radioGroup,
        builder: (context, radioGroup) {
          return CustomRadioButton(
            text: "lbl_now".tr,
            value: "lbl_now".tr ?? "",
            groupValue: radioGroup,
            onChange: (value) {
              context
                  .read<FindDonorBloc>()
                  .add(ChangeRadioButtonEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBookLater(BuildContext context) {
    return BlocSelector<FindDonorBloc, FindDonorState, String?>(
      selector: (state) => state.radioGroup1,
      builder: (context, radioGroup1) {
        return CustomRadioButton(
          text: "lbl_book_later".tr,
          value: "lbl_book_later".tr ?? "",
          groupValue: radioGroup1,
          onChange: (value) {
            context
                .read<FindDonorBloc>()
                .add(ChangeRadioButton1Event(value: value));
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFIndDonor(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: BlocSelector<FindDonorBloc, FindDonorState, FindDonorModel?>(
          selector: (state) => state.findDonorModelObj,
          builder: (context, findDonorModelObj) {
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
              itemCount: findDonorModelObj?.finddonorItemList.length ?? 0,
              itemBuilder: (context, index) {
                FinddonorItemModel model =
                    findDonorModelObj?.finddonorItemList[index] ??
                        FinddonorItemModel();
                return FinddonorItemWidget(
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
}

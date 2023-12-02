import 'bloc/login_menu_bloc.dart';
import 'models/login_menu_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/widgets/custom_elevated_button.dart';
import 'package:flexyatra/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class LoginMenuScreen extends StatelessWidget {
  const LoginMenuScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginMenuBloc>(
      create: (context) => LoginMenuBloc(LoginMenuState(
        loginMenuModelObj: LoginMenuModel(),
      ))
        ..add(LoginMenuInitialEvent()),
      child: LoginMenuScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoginMenuBloc, LoginMenuState>(
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
                  SizedBox(height: 91.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgMan1,
                    height: 264.v,
                    width: 241.h,
                  ),
                  SizedBox(height: 52.v),
                  _buildUsername(context),
                  SizedBox(height: 45.v),
                  SizedBox(
                    height: 44.v,
                    width: 178.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomIconButton(
                          height: 44.v,
                          width: 178.h,
                          alignment: Alignment.center,
                          child: CustomImageView(),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 39.h),
                            child: Text(
                              "lbl_login".tr,
                              style: CustomTextStyles
                                  .displaySmallOnPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 34.v),
                  CustomElevatedButton(
                    width: 178.h,
                    text: "lbl_register".tr,
                  ),
                  SizedBox(height: 46.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 112.h),
                      child: Text(
                        "msg_forget_password".tr,
                        style: CustomTextStyles.titleLargeInterRegular.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 42.v),
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
      },
    );
  }

  /// Section Widget
  Widget _buildUsername(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 52.h,
        right: 34.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                "lbl_username".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 24.v),
              SizedBox(
                width: 114.h,
                child: Text(
                  "lbl_password".tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUnion,
            height: 130.v,
            width: 215.h,
            margin: EdgeInsets.only(
              left: 14.h,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }
}

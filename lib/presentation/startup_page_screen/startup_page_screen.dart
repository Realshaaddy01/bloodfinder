import 'bloc/startup_page_bloc.dart';
import 'models/startup_page_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flutter/material.dart';

class StartupPageScreen extends StatelessWidget {
  const StartupPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StartupPageBloc>(
        create: (context) => StartupPageBloc(
            StartupPageState(startupPageModelObj: StartupPageModel()))
          ..add(StartupPageInitialEvent()),
        child: StartupPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<StartupPageBloc, StartupPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    Container(
                        height: 53.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(color: appTheme.redA700)),
                    SizedBox(height: 51.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgBloodFinder1,
                        height: 500.v,
                        width: 430.h),
                    Spacer(),
                    SizedBox(
                        width: 148.h,
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(text: "    ".tr),
                              TextSpan(
                                  text: "lbl_powered_by".tr,
                                  style: CustomTextStyles.titleLargeInter),
                              TextSpan(
                                  text: "lbl_baje".tr,
                                  style:
                                      CustomTextStyles.titleLargeInterRed70002),
                              TextSpan(
                                  text: "lbl_pro".tr,
                                  style: CustomTextStyles
                                      .titleLargeInterIndigo500),
                              TextSpan(
                                  text: "lbl_duc".tr,
                                  style: CustomTextStyles
                                      .titleLargeInterErrorContainer),
                              TextSpan(
                                  text: "lbl_tion".tr,
                                  style:
                                      CustomTextStyles.titleLargeInterRed70002)
                            ]),
                            textAlign: TextAlign.left)),
                    SizedBox(height: 86.v),
                    Container(
                        height: 54.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer))
                  ]))));
    });
  }
}

import 'bloc/forget_password_bloc.dart';
import 'models/forget_password_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgetPasswordBloc>(
      create: (context) => ForgetPasswordBloc(ForgetPasswordState(
        forgetPasswordModelObj: ForgetPasswordModel(),
      ))
        ..add(ForgetPasswordInitialEvent()),
      child: ForgetPasswordScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    height: 53.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.redA700,
                    ),
                  ),
                  SizedBox(height: 57.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgBloodFinder1248x301,
                    height: 305.v,
                    width: 299.h,
                  ),
                  SizedBox(height: 50.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage3,
                    height: 363.v,
                    width: 409.h,
                    radius: BorderRadius.circular(
                      30.h,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Container(
                    height: 54.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
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
}

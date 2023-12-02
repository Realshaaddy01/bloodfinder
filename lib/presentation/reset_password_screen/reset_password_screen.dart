import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
      create: (context) => ResetPasswordBloc(ResetPasswordState(
        resetPasswordModelObj: ResetPasswordModel(),
      ))
        ..add(ResetPasswordInitialEvent()),
      child: ResetPasswordScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
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
                  SizedBox(height: 82.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgBloodFinder1248x301,
                    height: 248.v,
                    width: 301.h,
                  ),
                  SizedBox(height: 83.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage2,
                    height: 366.v,
                    width: 415.h,
                    radius: BorderRadius.circular(
                      30.h,
                    ),
                  ),
                  SizedBox(height: 46.v),
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

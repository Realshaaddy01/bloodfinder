import 'bloc/register_menu_bloc.dart';
import 'models/register_menu_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/core/utils/validation_functions.dart';
import 'package:flexyatra/widgets/custom_elevated_button.dart';
import 'package:flexyatra/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterMenuScreen extends StatelessWidget {
  RegisterMenuScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterMenuBloc>(
      create: (context) => RegisterMenuBloc(RegisterMenuState(
        registerMenuModelObj: RegisterMenuModel(),
      ))
        ..add(RegisterMenuInitialEvent()),
      child: RegisterMenuScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
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
                SizedBox(height: 48.v),
                Container(
                  width: 383.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 29.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Text(
                    "msg_registration_form".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
                SizedBox(height: 54.v),
                _buildFirstName1(context),
                SizedBox(height: 17.v),
                _buildEmail(context),
                SizedBox(height: 17.v),
                _buildAddress(context),
                SizedBox(height: 19.v),
                _buildContactNo(context),
                SizedBox(height: 18.v),
                _buildDateOfBirth(context),
                SizedBox(height: 18.v),
                _buildNine(context),
                SizedBox(height: 17.v),
                _buildUserType(context),
                SizedBox(height: 16.v),
                _buildPassword(context),
                SizedBox(height: 17.v),
                _buildConfirmpassword(context),
                SizedBox(height: 37.v),
                _buildSubmit(context),
                SizedBox(height: 39.v),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return BlocSelector<RegisterMenuBloc, RegisterMenuState,
        TextEditingController?>(
      selector: (state) => state.firstNameController,
      builder: (context, firstNameController) {
        return CustomTextFormField(
          width: 160.h,
          controller: firstNameController,
          hintText: "lbl_first_name".tr,
          hintStyle: CustomTextStyles.bodyLargeInter,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 28.h),
      child: BlocSelector<RegisterMenuBloc, RegisterMenuState,
          TextEditingController?>(
        selector: (state) => state.lastNameController,
        builder: (context, lastNameController) {
          return CustomTextFormField(
            width: 160.h,
            controller: lastNameController,
            hintText: "lbl_last_name".tr,
            hintStyle: CustomTextStyles.bodyLargeInter,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFirstName(context),
          _buildLastName(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: BlocSelector<RegisterMenuBloc, RegisterMenuState,
          TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "lbl_email".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: BlocSelector<RegisterMenuBloc, RegisterMenuState,
          TextEditingController?>(
        selector: (state) => state.addressController,
        builder: (context, addressController) {
          return CustomTextFormField(
            controller: addressController,
            hintText: "lbl_address".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContactNo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: BlocSelector<RegisterMenuBloc, RegisterMenuState,
          TextEditingController?>(
        selector: (state) => state.contactNoController,
        builder: (context, contactNoController) {
          return CustomTextFormField(
            controller: contactNoController,
            hintText: "lbl_contact_no".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: BlocSelector<RegisterMenuBloc, RegisterMenuState,
          TextEditingController?>(
        selector: (state) => state.dateOfBirthController,
        builder: (context, dateOfBirthController) {
          return CustomTextFormField(
            controller: dateOfBirthController,
            hintText: "msg_dob_date_of_birth".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: BlocSelector<RegisterMenuBloc, RegisterMenuState,
          TextEditingController?>(
        selector: (state) => state.nineController,
        builder: (context, nineController) {
          return CustomTextFormField(
            controller: nineController,
            hintText: "lbl_blood_group".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserType(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: BlocSelector<RegisterMenuBloc, RegisterMenuState,
          TextEditingController?>(
        selector: (state) => state.userTypeController,
        builder: (context, userTypeController) {
          return CustomTextFormField(
            controller: userTypeController,
            hintText: "lbl_user_type".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: BlocSelector<RegisterMenuBloc, RegisterMenuState,
          TextEditingController?>(
        selector: (state) => state.passwordController,
        builder: (context, passwordController) {
          return CustomTextFormField(
            controller: passwordController,
            hintText: "lbl_password".tr,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: BlocSelector<RegisterMenuBloc, RegisterMenuState,
          TextEditingController?>(
        selector: (state) => state.confirmpasswordController,
        builder: (context, confirmpasswordController) {
          return CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "msg_confirm_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
      width: 178.h,
      text: "lbl_submit".tr,
      margin: EdgeInsets.only(left: 107.h),
      alignment: Alignment.centerLeft,
    );
  }
}

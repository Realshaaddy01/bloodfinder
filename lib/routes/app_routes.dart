import 'package:flutter/material.dart';
import 'package:flexyatra/presentation/startup_page_screen/startup_page_screen.dart';
import 'package:flexyatra/presentation/login_menu_screen/login_menu_screen.dart';
import 'package:flexyatra/presentation/register_menu_screen/register_menu_screen.dart';
import 'package:flexyatra/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:flexyatra/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:flexyatra/presentation/home_page_screen/home_page_screen.dart';
import 'package:flexyatra/presentation/find_donor_container_screen/find_donor_container_screen.dart';
import 'package:flexyatra/presentation/find_hospital_screen/find_hospital_screen.dart';
import 'package:flexyatra/presentation/find_doctor_screen/find_doctor_screen.dart';
import 'package:flexyatra/presentation/find_oxygen_screen/find_oxygen_screen.dart';
import 'package:flexyatra/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startupPageScreen = '/startup_page_screen';

  static const String loginMenuScreen = '/login_menu_screen';

  static const String registerMenuScreen = '/register_menu_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String findDonorPage = '/find_donor_page';

  static const String findDonorContainerScreen = '/find_donor_container_screen';

  static const String findHospitalScreen = '/find_hospital_screen';

  static const String findDoctorScreen = '/find_doctor_screen';

  static const String findOxygenScreen = '/find_oxygen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        startupPageScreen: StartupPageScreen.builder,
        loginMenuScreen: LoginMenuScreen.builder,
        registerMenuScreen: RegisterMenuScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        forgetPasswordScreen: ForgetPasswordScreen.builder,
        homePageScreen: HomePageScreen.builder,
        findDonorContainerScreen: FindDonorContainerScreen.builder,
        findHospitalScreen: FindHospitalScreen.builder,
        findDoctorScreen: FindDoctorScreen.builder,
        findOxygenScreen: FindOxygenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: StartupPageScreen.builder
      };
}

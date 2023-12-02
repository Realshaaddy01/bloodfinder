import 'bloc/find_donor_container_bloc.dart';
import 'models/find_donor_container_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/find_donor_page/find_donor_page.dart';
import 'package:flexyatra/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FindDonorContainerScreen extends StatelessWidget {
  FindDonorContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FindDonorContainerBloc>(
        create: (context) => FindDonorContainerBloc(FindDonorContainerState(
            findDonorContainerModelObj: FindDonorContainerModel()))
          ..add(FindDonorContainerInitialEvent()),
        child: FindDonorContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<FindDonorContainerBloc, FindDonorContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.findDonorPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(left: 13.h, right: 16.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

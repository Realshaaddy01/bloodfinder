import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flexyatra/presentation/startup_page_screen/models/startup_page_model.dart';
part 'startup_page_event.dart';
part 'startup_page_state.dart';

/// A bloc that manages the state of a StartupPage according to the event that is dispatched to it.
class StartupPageBloc extends Bloc<StartupPageEvent, StartupPageState> {
  StartupPageBloc(StartupPageState initialState) : super(initialState) {
    on<StartupPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StartupPageInitialEvent event,
    Emitter<StartupPageState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginMenuScreen,
      );
    });
  }
}

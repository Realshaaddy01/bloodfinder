import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flexyatra/presentation/login_menu_screen/models/login_menu_model.dart';
part 'login_menu_event.dart';
part 'login_menu_state.dart';

/// A bloc that manages the state of a LoginMenu according to the event that is dispatched to it.
class LoginMenuBloc extends Bloc<LoginMenuEvent, LoginMenuState> {
  LoginMenuBloc(LoginMenuState initialState) : super(initialState) {
    on<LoginMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginMenuInitialEvent event,
    Emitter<LoginMenuState> emit,
  ) async {}
}

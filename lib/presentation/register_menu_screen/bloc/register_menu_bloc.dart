import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flexyatra/presentation/register_menu_screen/models/register_menu_model.dart';
part 'register_menu_event.dart';
part 'register_menu_state.dart';

/// A bloc that manages the state of a RegisterMenu according to the event that is dispatched to it.
class RegisterMenuBloc extends Bloc<RegisterMenuEvent, RegisterMenuState> {
  RegisterMenuBloc(RegisterMenuState initialState) : super(initialState) {
    on<RegisterMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegisterMenuInitialEvent event,
    Emitter<RegisterMenuState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      lastNameController: TextEditingController(),
      emailController: TextEditingController(),
      addressController: TextEditingController(),
      contactNoController: TextEditingController(),
      dateOfBirthController: TextEditingController(),
      nineController: TextEditingController(),
      userTypeController: TextEditingController(),
      passwordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
    ));
  }
}

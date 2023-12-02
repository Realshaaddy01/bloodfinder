// ignore_for_file: must_be_immutable

part of 'register_menu_bloc.dart';

/// Represents the state of RegisterMenu in the application.
class RegisterMenuState extends Equatable {
  RegisterMenuState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.addressController,
    this.contactNoController,
    this.dateOfBirthController,
    this.nineController,
    this.userTypeController,
    this.passwordController,
    this.confirmpasswordController,
    this.registerMenuModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? addressController;

  TextEditingController? contactNoController;

  TextEditingController? dateOfBirthController;

  TextEditingController? nineController;

  TextEditingController? userTypeController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  RegisterMenuModel? registerMenuModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        addressController,
        contactNoController,
        dateOfBirthController,
        nineController,
        userTypeController,
        passwordController,
        confirmpasswordController,
        registerMenuModelObj,
      ];
  RegisterMenuState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? addressController,
    TextEditingController? contactNoController,
    TextEditingController? dateOfBirthController,
    TextEditingController? nineController,
    TextEditingController? userTypeController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    RegisterMenuModel? registerMenuModelObj,
  }) {
    return RegisterMenuState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      addressController: addressController ?? this.addressController,
      contactNoController: contactNoController ?? this.contactNoController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      nineController: nineController ?? this.nineController,
      userTypeController: userTypeController ?? this.userTypeController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      registerMenuModelObj: registerMenuModelObj ?? this.registerMenuModelObj,
    );
  }
}

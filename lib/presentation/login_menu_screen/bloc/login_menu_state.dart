// ignore_for_file: must_be_immutable

part of 'login_menu_bloc.dart';

/// Represents the state of LoginMenu in the application.
class LoginMenuState extends Equatable {
  LoginMenuState({this.loginMenuModelObj});

  LoginMenuModel? loginMenuModelObj;

  @override
  List<Object?> get props => [
        loginMenuModelObj,
      ];
  LoginMenuState copyWith({LoginMenuModel? loginMenuModelObj}) {
    return LoginMenuState(
      loginMenuModelObj: loginMenuModelObj ?? this.loginMenuModelObj,
    );
  }
}

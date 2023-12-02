// ignore_for_file: must_be_immutable

part of 'login_menu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginMenu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginMenuEvent extends Equatable {}

/// Event that is dispatched when the LoginMenu widget is first created.
class LoginMenuInitialEvent extends LoginMenuEvent {
  @override
  List<Object?> get props => [];
}

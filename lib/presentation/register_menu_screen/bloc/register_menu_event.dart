// ignore_for_file: must_be_immutable

part of 'register_menu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterMenu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegisterMenuEvent extends Equatable {}

/// Event that is dispatched when the RegisterMenu widget is first created.
class RegisterMenuInitialEvent extends RegisterMenuEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'startup_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///StartupPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StartupPageEvent extends Equatable {}

/// Event that is dispatched when the StartupPage widget is first created.
class StartupPageInitialEvent extends StartupPageEvent {
  @override
  List<Object?> get props => [];
}

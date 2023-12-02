// ignore_for_file: must_be_immutable

part of 'find_oxygen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FindOxygen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FindOxygenEvent extends Equatable {}

/// Event that is dispatched when the FindOxygen widget is first created.
class FindOxygenInitialEvent extends FindOxygenEvent {
  @override
  List<Object?> get props => [];
}

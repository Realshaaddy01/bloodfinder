// ignore_for_file: must_be_immutable

part of 'find_doctor_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FindDoctor widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FindDoctorEvent extends Equatable {}

/// Event that is dispatched when the FindDoctor widget is first created.
class FindDoctorInitialEvent extends FindDoctorEvent {
  @override
  List<Object?> get props => [];
}

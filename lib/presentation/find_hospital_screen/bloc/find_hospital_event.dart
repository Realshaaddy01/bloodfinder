// ignore_for_file: must_be_immutable

part of 'find_hospital_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FindHospital widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FindHospitalEvent extends Equatable {}

/// Event that is dispatched when the FindHospital widget is first created.
class FindHospitalInitialEvent extends FindHospitalEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FindHospitalEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}

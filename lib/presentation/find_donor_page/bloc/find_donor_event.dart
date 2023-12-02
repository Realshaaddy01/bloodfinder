// ignore_for_file: must_be_immutable

part of 'find_donor_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FindDonor widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FindDonorEvent extends Equatable {}

/// Event that is dispatched when the FindDonor widget is first created.
class FindDonorInitialEvent extends FindDonorEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FindDonorEvent {
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

///Event for changing radio button
class ChangeRadioButtonEvent extends FindDonorEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends FindDonorEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

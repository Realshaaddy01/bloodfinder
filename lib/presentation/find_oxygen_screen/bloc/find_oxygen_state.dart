// ignore_for_file: must_be_immutable

part of 'find_oxygen_bloc.dart';

/// Represents the state of FindOxygen in the application.
class FindOxygenState extends Equatable {
  FindOxygenState({this.findOxygenModelObj});

  FindOxygenModel? findOxygenModelObj;

  @override
  List<Object?> get props => [
        findOxygenModelObj,
      ];
  FindOxygenState copyWith({FindOxygenModel? findOxygenModelObj}) {
    return FindOxygenState(
      findOxygenModelObj: findOxygenModelObj ?? this.findOxygenModelObj,
    );
  }
}

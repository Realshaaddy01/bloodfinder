// ignore_for_file: must_be_immutable

part of 'find_donor_bloc.dart';

/// Represents the state of FindDonor in the application.
class FindDonorState extends Equatable {
  FindDonorState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.findDonorModelObj,
  });

  FindDonorModel? findDonorModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        findDonorModelObj,
      ];
  FindDonorState copyWith({
    String? radioGroup,
    String? radioGroup1,
    FindDonorModel? findDonorModelObj,
  }) {
    return FindDonorState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      findDonorModelObj: findDonorModelObj ?? this.findDonorModelObj,
    );
  }
}

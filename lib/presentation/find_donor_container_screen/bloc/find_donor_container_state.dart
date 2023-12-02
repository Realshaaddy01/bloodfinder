// ignore_for_file: must_be_immutable

part of 'find_donor_container_bloc.dart';

/// Represents the state of FindDonorContainer in the application.
class FindDonorContainerState extends Equatable {
  FindDonorContainerState({this.findDonorContainerModelObj});

  FindDonorContainerModel? findDonorContainerModelObj;

  @override
  List<Object?> get props => [
        findDonorContainerModelObj,
      ];
  FindDonorContainerState copyWith(
      {FindDonorContainerModel? findDonorContainerModelObj}) {
    return FindDonorContainerState(
      findDonorContainerModelObj:
          findDonorContainerModelObj ?? this.findDonorContainerModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'find_doctor_bloc.dart';

/// Represents the state of FindDoctor in the application.
class FindDoctorState extends Equatable {
  FindDoctorState({this.findDoctorModelObj});

  FindDoctorModel? findDoctorModelObj;

  @override
  List<Object?> get props => [
        findDoctorModelObj,
      ];
  FindDoctorState copyWith({FindDoctorModel? findDoctorModelObj}) {
    return FindDoctorState(
      findDoctorModelObj: findDoctorModelObj ?? this.findDoctorModelObj,
    );
  }
}

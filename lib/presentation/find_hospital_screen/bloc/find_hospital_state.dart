// ignore_for_file: must_be_immutable

part of 'find_hospital_bloc.dart';

/// Represents the state of FindHospital in the application.
class FindHospitalState extends Equatable {
  FindHospitalState({this.findHospitalModelObj});

  FindHospitalModel? findHospitalModelObj;

  @override
  List<Object?> get props => [
        findHospitalModelObj,
      ];
  FindHospitalState copyWith({FindHospitalModel? findHospitalModelObj}) {
    return FindHospitalState(
      findHospitalModelObj: findHospitalModelObj ?? this.findHospitalModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'startup_page_bloc.dart';

/// Represents the state of StartupPage in the application.
class StartupPageState extends Equatable {
  StartupPageState({this.startupPageModelObj});

  StartupPageModel? startupPageModelObj;

  @override
  List<Object?> get props => [
        startupPageModelObj,
      ];
  StartupPageState copyWith({StartupPageModel? startupPageModelObj}) {
    return StartupPageState(
      startupPageModelObj: startupPageModelObj ?? this.startupPageModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'find_donor_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FindDonorContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FindDonorContainerEvent extends Equatable {}

/// Event that is dispatched when the FindDonorContainer widget is first created.
class FindDonorContainerInitialEvent extends FindDonorContainerEvent {
  @override
  List<Object?> get props => [];
}

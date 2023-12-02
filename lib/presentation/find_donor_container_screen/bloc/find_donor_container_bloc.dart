import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flexyatra/presentation/find_donor_container_screen/models/find_donor_container_model.dart';
part 'find_donor_container_event.dart';
part 'find_donor_container_state.dart';

/// A bloc that manages the state of a FindDonorContainer according to the event that is dispatched to it.
class FindDonorContainerBloc
    extends Bloc<FindDonorContainerEvent, FindDonorContainerState> {
  FindDonorContainerBloc(FindDonorContainerState initialState)
      : super(initialState) {
    on<FindDonorContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FindDonorContainerInitialEvent event,
    Emitter<FindDonorContainerState> emit,
  ) async {}
}

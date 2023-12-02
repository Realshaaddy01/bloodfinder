import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/a_item_model.dart';
import '../models/finddonor_item_model.dart';
import 'package:flexyatra/presentation/find_donor_page/models/find_donor_model.dart';
part 'find_donor_event.dart';
part 'find_donor_state.dart';

/// A bloc that manages the state of a FindDonor according to the event that is dispatched to it.
class FindDonorBloc extends Bloc<FindDonorEvent, FindDonorState> {
  FindDonorBloc(FindDonorState initialState) : super(initialState) {
    on<FindDonorInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FindDonorState> emit,
  ) {
    List<AItemModel> newList =
        List<AItemModel>.from(state.findDonorModelObj!.aItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        findDonorModelObj:
            state.findDonorModelObj?.copyWith(aItemList: newList)));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<FindDonorState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<FindDonorState> emit,
  ) {
    emit(state.copyWith(
      radioGroup1: event.value,
    ));
  }

  List<AItemModel> fillAItemList() {
    return List.generate(8, (index) => AItemModel());
  }

  List<FinddonorItemModel> fillFinddonorItemList() {
    return [
      FinddonorItemModel(
          username: ImageConstant.imgWoman4,
          userName: "User name ",
          kausaltarKathanduNepal: "Kausaltar,Kathandu,Nepal"),
      FinddonorItemModel(
          username: ImageConstant.imgMan1,
          userName: "User name ",
          kausaltarKathanduNepal: "Kausaltar,Kathandu,Nepal"),
      FinddonorItemModel(
          username: ImageConstant.imgWoman4,
          userName: "User name ",
          kausaltarKathanduNepal: "Kausaltar,Kathandu,Nepal"),
      FinddonorItemModel(
          username: ImageConstant.imgMan1,
          userName: "User name ",
          kausaltarKathanduNepal: "Kausaltar,Kathandu,Nepal")
    ];
  }

  _onInitialize(
    FindDonorInitialEvent event,
    Emitter<FindDonorState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
      radioGroup1: "",
    ));
    emit(state.copyWith(
        findDonorModelObj: state.findDonorModelObj?.copyWith(
      aItemList: fillAItemList(),
      finddonorItemList: fillFinddonorItemList(),
    )));
  }
}

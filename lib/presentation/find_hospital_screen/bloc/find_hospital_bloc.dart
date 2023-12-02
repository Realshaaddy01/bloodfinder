import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/redcross_item_model.dart';
import '../models/findhospital_item_model.dart';
import 'package:flexyatra/presentation/find_hospital_screen/models/find_hospital_model.dart';
part 'find_hospital_event.dart';
part 'find_hospital_state.dart';

/// A bloc that manages the state of a FindHospital according to the event that is dispatched to it.
class FindHospitalBloc extends Bloc<FindHospitalEvent, FindHospitalState> {
  FindHospitalBloc(FindHospitalState initialState) : super(initialState) {
    on<FindHospitalInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    FindHospitalInitialEvent event,
    Emitter<FindHospitalState> emit,
  ) async {
    emit(state.copyWith(
        findHospitalModelObj: state.findHospitalModelObj?.copyWith(
      redcrossItemList: fillRedcrossItemList(),
      findhospitalItemList: fillFindhospitalItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FindHospitalState> emit,
  ) {
    List<RedcrossItemModel> newList = List<RedcrossItemModel>.from(
        state.findHospitalModelObj!.redcrossItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        findHospitalModelObj:
            state.findHospitalModelObj?.copyWith(redcrossItemList: newList)));
  }

  List<RedcrossItemModel> fillRedcrossItemList() {
    return List.generate(1, (index) => RedcrossItemModel());
  }

  List<FindhospitalItemModel> fillFindhospitalItemList() {
    return [
      FindhospitalItemModel(
          kausaltarKathanduNepal: "Kausaltar,Kathandu,Nepal",
          cityCentreHospital: "City Centre Hospital",
          bookNow: "Book Now",
          bookNow1: "Book Now",
          kausaltarKathanduNepal1: "Kausaltar,Kathandu,Nepal",
          cityCentreHospital1: "City Centre Hospital",
          cityCentreHospital2: "City Centre Hospital",
          kausaltarKathanduNepal2: "Kausaltar,Kathandu,Nepal",
          contact: "Contact")
    ];
  }
}

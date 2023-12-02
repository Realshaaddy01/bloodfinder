import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/findoxygen_item_model.dart';
import 'package:flexyatra/presentation/find_oxygen_screen/models/find_oxygen_model.dart';
part 'find_oxygen_event.dart';
part 'find_oxygen_state.dart';

/// A bloc that manages the state of a FindOxygen according to the event that is dispatched to it.
class FindOxygenBloc extends Bloc<FindOxygenEvent, FindOxygenState> {
  FindOxygenBloc(FindOxygenState initialState) : super(initialState) {
    on<FindOxygenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FindOxygenInitialEvent event,
    Emitter<FindOxygenState> emit,
  ) async {
    emit(state.copyWith(
        findOxygenModelObj: state.findOxygenModelObj?.copyWith(
      findoxygenItemList: fillFindoxygenItemList(),
    )));
  }

  List<FindoxygenItemModel> fillFindoxygenItemList() {
    return [
      FindoxygenItemModel(
          tilGangaHospital: "Til Ganga Hospital",
          newRoadKathanduNepal: "New Road,Kathandu,Nepal",
          contact: "Contact"),
      FindoxygenItemModel(
          tilGangaHospital: "Civil Hospital",
          newRoadKathanduNepal: "Baneshwor,Kathandu,Nepal"),
      FindoxygenItemModel(
          tilGangaHospital: "Civil Hospital",
          newRoadKathanduNepal: "Baneshwor,Kathandu,Nepal",
          contact: "Contact")
    ];
  }
}

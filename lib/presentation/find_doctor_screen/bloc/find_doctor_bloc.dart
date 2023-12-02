import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/time_item_model.dart';
import '../models/contact_item_model.dart';
import 'package:flexyatra/presentation/find_doctor_screen/models/find_doctor_model.dart';
part 'find_doctor_event.dart';
part 'find_doctor_state.dart';

/// A bloc that manages the state of a FindDoctor according to the event that is dispatched to it.
class FindDoctorBloc extends Bloc<FindDoctorEvent, FindDoctorState> {
  FindDoctorBloc(FindDoctorState initialState) : super(initialState) {
    on<FindDoctorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FindDoctorInitialEvent event,
    Emitter<FindDoctorState> emit,
  ) async {
    emit(state.copyWith(
        findDoctorModelObj: state.findDoctorModelObj?.copyWith(
      timeItemList: fillTimeItemList(),
      contactItemList: fillContactItemList(),
    )));
  }

  List<TimeItemModel> fillTimeItemList() {
    return [
      TimeItemModel(
          time: "Mon, Wed, and Fri: 8:30 am to 9 am",
          time1: "Mon, Wed, and Fri: 8:30 am to 9 am"),
      TimeItemModel(
          time: "PROF. DR. SANDUK RUIT, MD, FRACO",
          time1: "TilGanga Hospital Kathmandu")
    ];
  }

  List<ContactItemModel> fillContactItemList() {
    return [
      ContactItemModel(
          civilHospitalKathmandu: "Civil Hospital Kathmandu",
          urologyandUrooncology: "Urology and Urooncology",
          drMaheshBdr: "Dr. Mahesh Bdr. Adhikari MBBS, MS",
          time: "Mon, Wed, and Fri: 8:30 am to 9 am"),
      ContactItemModel(
          civilHospitalKathmandu: "Teaching Hospital Kathmandu",
          urologyandUrooncology: "Pulmonologist",
          drMaheshBdr: "Dr. Ekta Malla Rana, MBBS, MD",
          time: "Sun-Fri 4:30 pm"),
      ContactItemModel(
          urologyandUrooncology: "General Physician | Endocrinology",
          drMaheshBdr: "Dr. Mahesh Dahal, MBBS, MD",
          time: "Mon, Wed, and Fri: 8:30 am to 9 am")
    ];
  }
}

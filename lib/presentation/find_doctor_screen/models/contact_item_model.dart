/// This class is used in the [contact_item_widget] screen.
class ContactItemModel {
  ContactItemModel({
    this.civilHospitalKathmandu,
    this.urologyandUrooncology,
    this.drMaheshBdr,
    this.time,
    this.id,
  }) {
    civilHospitalKathmandu =
        civilHospitalKathmandu ?? "Civil Hospital Kathmandu";
    urologyandUrooncology = urologyandUrooncology ?? "Urology and Urooncology";
    drMaheshBdr = drMaheshBdr ?? "Dr. Mahesh Bdr. Adhikari MBBS, MS";
    time = time ?? "Mon, Wed, and Fri: 8:30 am to 9 am";
    id = id ?? "";
  }

  String? civilHospitalKathmandu;

  String? urologyandUrooncology;

  String? drMaheshBdr;

  String? time;

  String? id;
}

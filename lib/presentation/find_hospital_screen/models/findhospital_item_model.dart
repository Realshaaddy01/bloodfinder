/// This class is used in the [findhospital_item_widget] screen.
class FindhospitalItemModel {
  FindhospitalItemModel({
    this.kausaltarKathanduNepal,
    this.cityCentreHospital,
    this.bookNow,
    this.bookNow1,
    this.kausaltarKathanduNepal1,
    this.cityCentreHospital1,
    this.cityCentreHospital2,
    this.kausaltarKathanduNepal2,
    this.contact,
    this.id,
  }) {
    kausaltarKathanduNepal =
        kausaltarKathanduNepal ?? "Kausaltar,Kathandu,Nepal";
    cityCentreHospital = cityCentreHospital ?? "City Centre Hospital";
    bookNow = bookNow ?? "Book Now";
    bookNow1 = bookNow1 ?? "Book Now";
    kausaltarKathanduNepal1 =
        kausaltarKathanduNepal1 ?? "Kausaltar,Kathandu,Nepal";
    cityCentreHospital1 = cityCentreHospital1 ?? "City Centre Hospital";
    cityCentreHospital2 = cityCentreHospital2 ?? "City Centre Hospital";
    kausaltarKathanduNepal2 =
        kausaltarKathanduNepal2 ?? "Kausaltar,Kathandu,Nepal";
    contact = contact ?? "Contact";
    id = id ?? "";
  }

  String? kausaltarKathanduNepal;

  String? cityCentreHospital;

  String? bookNow;

  String? bookNow1;

  String? kausaltarKathanduNepal1;

  String? cityCentreHospital1;

  String? cityCentreHospital2;

  String? kausaltarKathanduNepal2;

  String? contact;

  String? id;
}

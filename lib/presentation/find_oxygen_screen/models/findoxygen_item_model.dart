/// This class is used in the [findoxygen_item_widget] screen.
class FindoxygenItemModel {
  FindoxygenItemModel({
    this.tilGangaHospital,
    this.newRoadKathanduNepal,
    this.contact,
    this.id,
  }) {
    tilGangaHospital = tilGangaHospital ?? "Til Ganga Hospital";
    newRoadKathanduNepal = newRoadKathanduNepal ?? "New Road,Kathandu,Nepal";
    contact = contact ?? "Contact";
    id = id ?? "";
  }

  String? tilGangaHospital;

  String? newRoadKathanduNepal;

  String? contact;

  String? id;
}

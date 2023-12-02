import '../../../core/app_export.dart';

/// This class is used in the [finddonor_item_widget] screen.
class FinddonorItemModel {
  FinddonorItemModel({
    this.username,
    this.userName,
    this.kausaltarKathanduNepal,
    this.id,
  }) {
    username = username ?? ImageConstant.imgWoman4;
    userName = userName ?? "User name ";
    kausaltarKathanduNepal =
        kausaltarKathanduNepal ?? "Kausaltar,Kathandu,Nepal";
    id = id ?? "";
  }

  String? username;

  String? userName;

  String? kausaltarKathanduNepal;

  String? id;
}

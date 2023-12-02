/// This class is used in the [time_item_widget] screen.
class TimeItemModel {
  TimeItemModel({
    this.time,
    this.time1,
    this.id,
  }) {
    time = time ?? "Mon, Wed, and Fri: 8:30 am to 9 am";
    time1 = time1 ?? "Mon, Wed, and Fri: 8:30 am to 9 am";
    id = id ?? "";
  }

  String? time;

  String? time1;

  String? id;
}

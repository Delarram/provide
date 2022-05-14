class TaskModel {
  String title;
  String detail;
  String icon;

  String get getTitle => title;
  String get getDetail => detail;
  String get getIcon => icon;
  TaskModel({required this.title,required this.detail,required this.icon});
}
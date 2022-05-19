import 'package:easyapproach/models/taskmodel.dart';
import 'package:flutter/cupertino.dart';

class TodoModel extends ChangeNotifier {

  List<TaskModel> taskList = [];
      int index = 0;
  addTaskInList() {
    TaskModel taskModel = TaskModel(
        title: taskList.length.toString(),
        detail: taskList.length.toString(),
        icon: taskList.length.toString());
    taskList.add(taskModel);
    notifyListeners();
  }

   reset() {
    // TaskModel taskModel = TaskModel(title: taskList.length.toString(),detail: taskList.length.toString(),icon: taskList.length.toString());
    taskList.clear();
    notifyListeners();
  }
   remove(){
    if(taskList.isEmpty){
      return ;
    }
   taskList.removeAt(taskList.length-1);
   notifyListeners();
    }

}

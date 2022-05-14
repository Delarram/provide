
import 'package:easyapproach/models/taskmodel.dart';
import 'package:flutter/cupertino.dart';

class TodoModel extends ChangeNotifier{
  int index = 0;
  List<TaskModel> taskList = [];

  addTaskInList(){
    TaskModel taskModel = TaskModel(title: taskList.length.toString(),detail: taskList.length.toString(),icon: taskList.length.toString());
    taskList.add(taskModel);
    notifyListeners();
  }

 // void reset(){
   // TaskModel taskModel = TaskModel(title: taskList.length.toString(),detail: taskList.length.toString(),icon: taskList.length.toString());
     //taskList.clear();
    //notifyListeners();
//  }

}
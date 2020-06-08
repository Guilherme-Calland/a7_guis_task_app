import 'package:a7_guis_task_app/database/databasehelper.dart';
import 'package:a7_guis_task_app/model/task.dart';
import 'package:flutter/material.dart';

class GuisTasksData extends ChangeNotifier{
  DatabaseHelper database = DatabaseHelper();

  List < Task > tasks = [
    new Task(name: 'do the dishes'),
    new Task(name: 'go to the gym'),
    new Task(name: 'clean room')
  ];

  String image = 'assets/gui.left.png';

  printTest(){
    print('test');
  }

  readTask() async{
    List< Map< String, dynamic> > rawDataList = await database.read();
    List< Task > tempTasks = List< Task >();
    for(Map<String, dynamic> rawData in rawDataList){
      Task task = Task.mapToTask(rawData);
      tempTasks.add(task);
    }
    tasks = tempTasks;
    notifyListeners();
  }

}
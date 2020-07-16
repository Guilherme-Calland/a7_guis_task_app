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

  Image image = guiNormal;
  static Image guiNormal = Image.asset('assets/gui.left.png', gaplessPlayback: true);
  static Image guiThumbsUp = Image.asset('assets/gui.left.thumbsUp.png', gaplessPlayback: true);

  static String order = "ASC";

  changeOrder(){
    if(order == "ASC"){
      order = "DESC";
    } else {
      order = "ASC";
    }
    readTasks();
  }

  changeImageToNormal(){
    image = guiNormal;
    notifyListeners();
  }

  changeImageToThumbsUp(){
    image = guiThumbsUp;
    notifyListeners();
  }

  createTask(Task task) async{
    Map<String, dynamic> taskData = task.toMap();
    int result = await database.create(taskData);
    print('created task of id: $result');
    readTasks();
  }

  readTasks() async {
    List< Map< String, dynamic> > rawDataList = await database.read();
    List< Task > tempTasks = List< Task >();
    for(Map<String, dynamic> rawData in rawDataList){
      Task task = Task.mapToTask(rawData);
      tempTasks.add(task);
    }
    tasks = tempTasks;
    notifyListeners();
  }

  updateTask(Task task) async{
    int result = await database.update(task.toMap());
    print('tasks updated: $result');
    readTasks();
  }

  deleteTask(int id) async {
    int result = await database.delete(id);
    print('number of deleted tasks: $result');
    readTasks();
  }
}
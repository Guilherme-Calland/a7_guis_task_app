import 'package:a7_guis_task_app/model/task.dart';
import 'package:flutter/material.dart';

class GuisTasksData extends ChangeNotifier{
  
  List < Task > tasks = [
    new Task(name: 'do the dishes'),
    new Task(name: 'go to the gym'),
    new Task(name: 'clean room')
  ];

  String image = 'assets/gui.left.png';


}
import 'package:a7_guis_task_app/database/databasehelper.dart';
import 'package:a7_guis_task_app/model/task.dart';
import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:a7_guis_task_app/shared/guis.tasks.data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskDialog extends StatelessWidget {
  final taskController = TextEditingController();
  final database = DatabaseHelper();
  final Task updatedTask;
  final String addOrChange;

  AddTaskDialog({this.addOrChange, this.updatedTask}){
    if(updatedTask!=null){
      taskController.text = updatedTask.name;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10
        ),
        width: 300,
        child: Column(
          children: <Widget>[
            Text(
              '$addOrChange Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: guisTaskAppTheme,
                fontSize: 30,
                fontWeight: FontWeight.w900
              ),
            ),
            SizedBox(height: 25),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: guisTaskAppTheme,
              ),
              controller: taskController,
              autofocus: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: InputBorder.none
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              color: guisTaskAppTheme,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                '$addOrChange',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900
                ),
              ),
              onPressed: (){
                  String name = taskController.text;
                  String date = taskController.text;
                if(updatedTask == null){ //creating a new task
                  Task task = Task(name : name, date: date);
                  Provider.of<GuisTasksData>(context, listen: false).createTask(task);
                }else{ //updating an existing task
                  updatedTask.name = name;
                  Provider.of<GuisTasksData>(context, listen: false).updateTask(updatedTask);
                }
                return Navigator.pop(context);
              },
            )
          ],
        )
      )
    );
  }
}
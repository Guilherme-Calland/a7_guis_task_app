import 'package:a7_guis_task_app/database/databasehelper.dart';
import 'package:a7_guis_task_app/model/task.dart';
import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:flutter/material.dart';

class AddTaskDialog extends StatelessWidget {
  var taskController = TextEditingController();
  var database = DatabaseHelper();
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
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: guisTaskAppTheme,
                fontSize: 30,
                fontWeight: FontWeight.w900
              ),
            ),
            SizedBox(height: 30),
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
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900
                ),
              ),
              onPressed: (){
                createTask();
                return Navigator.pop(context);
              },
            )
          ],
        )
      )
    );
  }

  createTask() async{
    String name = taskController.text;
    String date = DateTime.now().toString();
    Task task = Task(name : name, date: date);
    Map<String, dynamic> taskData = task.toMap();
    int result = await database.create(taskData);
    print('created task of id: $result');
  }
}
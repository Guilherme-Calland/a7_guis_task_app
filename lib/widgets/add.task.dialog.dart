import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:flutter/material.dart';

class AddTaskDialog extends StatelessWidget {
  var taskController = TextEditingController();
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
            SizedBox(height: 10),
            TextField(
              controller: taskController,
              autofocus: true,
            ),
            SizedBox(
              height: 20,
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

  createTask(){
    String task = taskController.text;
    print(task);
  }
}
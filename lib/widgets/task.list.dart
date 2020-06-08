import 'package:a7_guis_task_app/model/task.dart';
import 'package:a7_guis_task_app/shared/guis.tasks.data.dart';
import 'package:a7_guis_task_app/widgets/add.task.dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<GuisTasksData>(
        builder: (context, data, child){
          return ListView.builder(
            itemCount: data.tasks.length,
            itemBuilder: (context, index){
              Task task = data.tasks[index];
              return ListTile(
                title: Text(task.name),
                onTap: () async {
                  int result = await data.deleteTask(task.id);
                  print('number of deleted tasks: $result');
                },
                onLongPress: () async {
                  showDialog(
                    context: context,
                    builder: (context) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 200,),
                        AddTaskDialog(updatedTask: task, addOrChange: "Change",)
                      ],
                    )
                  );
                },
              );
            },
          );
        }
      )
    );
  }
}


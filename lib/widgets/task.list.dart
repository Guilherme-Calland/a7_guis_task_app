import 'package:a7_guis_task_app/model/task.dart';
import 'package:a7_guis_task_app/shared/guis.tasks.data.dart';
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
                  print('deleted task id: $result');
                  data.readTasks();
                }
              );
            },
          );
        }
      )
    );
  }
}


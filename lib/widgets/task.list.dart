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
              String task = data.tasks[index].name;
              return ListTile(
                title: Text(task),
              );
            },
          );
        }
      )
    );
  }
}


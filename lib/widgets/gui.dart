import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:a7_guis_task_app/shared/guis.tasks.data.dart';
import 'package:a7_guis_task_app/widgets/add.task.dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Gui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-39, 170),
      child: Transform.scale(
        scale: 2,
        child: MaterialButton(
          child: Consumer<GuisTasksData>(
            builder: (context, data, child){
              return Image.asset(data.image);
            }
          ),
          onPressed: (){
            print('pressed on guilherme');
            showDialog(
              context: context,
              builder: (context) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 200,),
                  AddTaskDialog(addOrChange: "Add")
                ],
              )
            );
          },
        )
      ),
    );
  }
}


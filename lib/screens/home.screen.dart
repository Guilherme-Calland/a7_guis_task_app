import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:a7_guis_task_app/screens/task.screen.dart';
import 'package:a7_guis_task_app/screens/title.screen.dart';
import 'package:a7_guis_task_app/shared/guis.tasks.data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GuisTasksData(),
      child: Scaffold(
        backgroundColor: guisTaskAppTheme,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleScreen(),
            TaskScreen()
          ],
        )
      ),
    );
  }
}


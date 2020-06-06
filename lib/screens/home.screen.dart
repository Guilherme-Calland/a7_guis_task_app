import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:a7_guis_task_app/screens/title.screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: guisTaskAppTheme,
      body: Column(
        children: <Widget>[
          TitleScreen(),
          
        ],
      )
    );
  }
}


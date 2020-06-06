import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 80,
        left: 40,
        bottom: 40
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(
              Icons.list,
              size: 30,
              color: guisTaskAppTheme
            )
          ),
          SizedBox(height: 20),
          Text(
            "Gui's Tasks",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w900
            ),
          ),
          SizedBox(height: 10),
          Text(
            '3 Tasks',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
        ],
      ),
    );
  }
}
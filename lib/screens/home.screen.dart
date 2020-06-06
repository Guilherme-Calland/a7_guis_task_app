import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:a7_guis_task_app/screens/title.screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: guisTaskAppTheme,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleScreen(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 10, left: 20
              ),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index){
                        return ListTile(
                          title: Text('test'),
                        );
                      },
                    )
                  )
                ],
              ),
            )
          )
        ],
      )
    );
  }
}


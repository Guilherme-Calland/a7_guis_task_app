import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:a7_guis_task_app/shared/guis.tasks.data.dart';
import 'package:a7_guis_task_app/widgets/gui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 80,
        left: 58,
        bottom: 40
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              FloatingActionButton(
                onPressed: (){
                  Provider.of<GuisTasksData>(context, listen: false).changeOrder();
                },
                elevation: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: guisTaskAppTheme
                  )
                ),
              ),
            ],
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
          Consumer<GuisTasksData>(
            builder: (context, data, child){
              return Text(
                '${data.tasks.length} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              );
            }
          )
        ],
      ),
    );
  }
}
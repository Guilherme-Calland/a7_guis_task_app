import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:flutter/material.dart';

class Gui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-40, 170),
      child: Transform.scale(
        scale: 2,
        child: MaterialButton(
          child: Image.asset('assets/gui.left.png'),
          onPressed: (){
            print('test');
            showDialog(
              context: context,
              builder: (context) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 200,),
                  Material(
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
                            // controller: ,
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
                            onPressed: (){},
                          )
                        ],
                      )
                    )
                  )
                ],
              )
            );
          },
        )
      ),
    );
  }
}
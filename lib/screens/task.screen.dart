import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          top: 10, left: 20
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
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
    );
  }
}


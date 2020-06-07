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
          },
        )
      ),
    );
  }
}
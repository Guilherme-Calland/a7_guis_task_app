import 'package:flutter/material.dart';

class Gui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Transform.translate(
        offset: Offset(-40, 170),
        child: Transform.scale
        (
          scale: 2,
          child: Image.asset('assets/gui.left.png')
        ),
      ),
      onPressed: (){},
    );
  }
}
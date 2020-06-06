import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:a7_guis_task_app/screens/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// main(){
//   runApp(MaterialApp(
//     theme: ThemeData(
//       cursorColor: guisTaskAppTheme,
//       primarySwatch: Colors.purple
//     ),
//     debugShowCheckedModeBanner: false,
//     home: HomeScreen(),
//   ));
// }

void main() async => {
  WidgetsFlutterBinding.ensureInitialized(),

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]),
  runApp(MaterialApp(
    theme: ThemeData(
      cursorColor: guisTaskAppTheme,
      primarySwatch: Colors.purple
    ),
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ))
};
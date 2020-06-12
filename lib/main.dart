import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:a7_guis_task_app/screens/home.screen.dart';
import 'package:a7_guis_task_app/shared/guis.tasks.data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async => {
  WidgetsFlutterBinding.ensureInitialized(),
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]),
  runApp(GuisTasks())
};

class GuisTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GuisTasksData(),
      child: MaterialApp(
        theme: ThemeData(
        cursorColor: guisTaskAppTheme,
        primarySwatch: Colors.purple,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
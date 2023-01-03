import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'Const/Colors/app_color.dart';
import 'Home Screen/table_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: AppColor.gDarkcolor));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      theme: ThemeData(),
      home: TableDataScreen(),
    );
  }
}


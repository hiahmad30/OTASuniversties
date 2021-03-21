import 'package:flutter/material.dart';
import 'package:otasuniversties/Resources.dart';

import 'Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTAS4u',
      theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          backgroundColor: AppColors.primaryColor),
      home: HomePage(),
    );
  }
}


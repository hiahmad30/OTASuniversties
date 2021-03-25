import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otasuniversties/Resources.dart';
import 'package:otasuniversties/Screens/LoginScreen.dart';

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
          textTheme: GoogleFonts.rubikTextTheme(
            Theme.of(context).textTheme,
          ),
          primaryColor: AppColors.primaryColor,
          backgroundColor: AppColors.primaryColor),
      home: LoginPage(),
    );
  }
}

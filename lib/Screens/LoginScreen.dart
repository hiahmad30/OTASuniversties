import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otasuniversties/Resources.dart';
import 'package:otasuniversties/Screens/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Align(
        alignment: Alignment.bottomRight,
        child: new ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 100,
              width: Get.width,
            )
          ],
        ),
      ),
    );
  }
}

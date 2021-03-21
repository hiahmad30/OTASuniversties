import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Resources.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Container(width: Get.width,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Text('Page 1'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

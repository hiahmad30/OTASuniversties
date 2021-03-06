import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:google_fonts/google_fonts.dart';
import 'package:otasuniversties/Screens/Widgets/GetCalender.dart';
import '../Resources.dart';
import 'AllStudents.dart';
import 'Notification.dart';
import 'StatePage.dart';
import 'Widgets/chartWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  int _currentIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    StatePage(),
    AllStudents(),
    NotificationPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Image.asset(
                          'assets/logo2.png',
                          width: 150,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, right: 20),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hello'),
                            Text(
                              'Ahmet S??ngeri??lio??lu',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Color(0xffF7F7F7),
                                  child: DropdownButton<String>(
                                    underline: Text(''),
                                    items: <String>[
                                      'Fall Semester 21/22',
                                      'Fall Semester 20/21'
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                    hint: Text('Fall Semester 21/22'),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  color: AppColors.homeCardColors,
                                  width: 160,
                                  height: 40,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Total Payments',
                                        style: TextStyle(
                                            color: AppColors.appTextColor),
                                      ),
                                      Text(
                                        '\$ 254,984.55',
                                        style: TextStyle(
                                            color: AppColors.greenCardColor,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            _pickDate(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              width: 100,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    'This Month',
                                    style: TextStyle(
                                        color: AppColors.primaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            child: Row(
                              children: [
                                DropdownButton<String>(
                                  items: <String>['May 24,2021', 'May 24,2021']
                                      .map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                  hint: Text('May 24,2021 '),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                DropdownButton<String>(
                                  items: <String>[
                                    'May 24,2021 ',
                                    'May 24,2021 '
                                  ].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                  hint: Text('May 24,2021'),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: Get.height * 0.36,
                      width: Get.width,
                      child: CustomRoundedBars.withSampleData(),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _getCard(0, 'Total Apps', '1200'),
                          _getCard(1, 'Total Paid', '\$25,500'),
                          _getCard(2, 'Completed', '167')
                        ],
                      ))),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _getCard(int cardno, String text, String figure) {
    return InkWell(
      onTap: () {
        // Get.to(() => Get.);
      },
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: cardno == 0
              ? AppColors.c1Color
              : cardno == 1
                  ? AppColors.c2dColors
                  : AppColors.c3Color,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 1),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(cardno == 0
                  ? 'assets/1.png'
                  : cardno == 1
                      ? 'assets/2.png'
                      : 'assets/3.png'),
              Column(
                children: [
                  Text(
                    '$text',
                    style: TextStyle(color: AppColors.cardTextColor),
                  ),
                  Text(
                    '$figure',
                    style: TextStyle(
                        color: AppColors.cardTextColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  DateTime pickedDate = DateTime.now();
  _pickDate(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDate: pickedDate,
    );
    if (date != null)
      setState(() {
        pickedDate = date;
      });
  }
}

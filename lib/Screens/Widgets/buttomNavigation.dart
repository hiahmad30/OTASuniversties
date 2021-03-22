import 'package:flutter/material.dart';
import 'package:otasuniversties/Screens/AllStudents.dart';

import '../HomePage.dart';
import '../Notifications.dart';
import '../StatePage.dart';

class ButtomBar extends StatefulWidget {
  @override
  _ButtomBarState createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    StatePage(),
    AllStudents(),
    Notifications(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          // backgroundColor: MyUtil.BackGroundColor,
          icon: Icon(Icons.home_outlined),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.monitor,
          ),
          title: Text(
            'Stats',
          ),
        ),
        BottomNavigationBarItem(
          // backgroundColor: MyUtil.BackGroundColor,
          icon: Icon(
            Icons.person_search_rounded,
          ),
          title: Text('Students'),
        ),
        // BottomNavigationBarItem(
        //   // backgroundColor: MyUtil.BackGroundColor,
        //   icon: Icon(
        //     Icons.alarm_add_outlined,
        //   ),
        //   title: Text('Notifications'),
        // ),
      ],
      currentIndex: _currentIndex,
      //selectedItemColor: MyUtil.PRimaryColor,
      //unselectedItemColor: MyUtil.PRimaryColor,
      onTap: _onItemTapped,
    );
  }
}

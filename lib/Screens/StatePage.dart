import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../Resources.dart';

class StatePage extends StatefulWidget {
  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  List<Map<String, dynamic>> cardModel = [
    {
      'name': 'Total Apps',
      'icon': 'assets/statsicon.png',
      'figure': '1200',
      'color': AppColors.c1Color
    },
    {
      'name': 'Total Paid',
      'icon': 'assets/statsicon.png',
      'figure': '\$5,434',
      'color': AppColors.c2dColors,
    },
    {
      'name': 'Completed Apps',
      'icon': 'assets/statsicon.png',
      'figure': '154',
      'color': AppColors.c3Color
    },
    {
      'name': 'Awaiting Conditional Acceptance',
      'icon': 'assets/statsicon.png',
      'figure': '1200',
      'color': AppColors.c4Color
    },
    {
      'name': 'Awaiting Payment',
      'icon': 'assets/statsicon.png',
      'figure': '1200',
      'color': AppColors.c5Color
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Container(
          // width: Get.width,
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Image.asset('assets/logo.png'),
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
                            'Ahmet Süngeriçlioğlu',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Column(
                            children: [
                              DropdownButton<String>(
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
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Text(
                              'This Month',
                              style: TextStyle(color: AppColors.primaryColor),
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
                    Container(
                      width: Get.width,
                      height: Get.height * 0.56,
                      child: StaggeredGridView.countBuilder(
                        padding: const EdgeInsets.all(8.0),
                        crossAxisCount: 4,
                        itemCount: cardModel.length, //staticData.length,
                        itemBuilder: (context, index) {
                          return _getCard2(cardModel[index]);
                        },
                        staggeredTileBuilder: (index) =>
                            StaggeredTile.count(2, index.isEven ? 2 : 3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _onItemTapped(index);
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       activeIcon: ShaderMask(
      //         shaderCallback: (Rect bounds) {
      //           return RadialGradient(
      //             center: Alignment.topLeft,
      //             radius: 0.5,
      //             colors: <Color>[
      //               Colors.greenAccent[200],
      //               Colors.blueAccent[200]
      //             ],
      //             tileMode: TileMode.repeated,
      //           ).createShader(bounds);
      //         },
      //         child: Icon(Icons.home_rounded),
      //       ),
      //       icon: new Icon(Icons.home_rounded, color: Colors.grey),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon: ShaderMask(
      //         shaderCallback: (Rect bounds) {
      //           return RadialGradient(
      //             center: Alignment.topLeft,
      //             radius: 1.0,
      //             colors: <Color>[
      //               Colors.greenAccent[200],
      //               Colors.blueAccent[200]
      //             ],
      //             tileMode: TileMode.mirror,
      //           ).createShader(bounds);
      //         },
      //         child: Icon(Icons.monitor),
      //       ),
      //       icon: Icon(Icons.monitor, color: Colors.grey),
      //       label: 'Stats',
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon: ShaderMask(
      //         shaderCallback: (Rect bounds) {
      //           return RadialGradient(
      //             center: Alignment.topLeft,
      //             radius: 1.0,
      //             colors: <Color>[
      //               Colors.greenAccent[200],
      //               Colors.blueAccent[200]
      //             ],
      //             tileMode: TileMode.mirror,
      //           ).createShader(bounds);
      //         },
      //         child: Icon(Icons.account_circle),
      //       ),
      //       icon: Icon(Icons.account_circle, color: Colors.grey),
      //       label: 'Students',
      //     ),
      //     BottomNavigationBarItem(
      //       // activeIcon: ShaderMask(
      //       //   shaderCallback: (Rect bounds) {
      //       //     return RadialGradient(
      //       //       center: Alignment.topLeft,
      //       //       radius: 1.0,
      //       //       colors: <Color>[
      //       //         Colors.greenAccent[200],
      //       //         Colors.blueAccent[200]
      //       //       ],
      //       //       tileMode: TileMode.mirror,
      //       //     ).createShader(bounds);
      //       //   },
      //       //   child: Icon(Icons.notifications_outlined),
      //       // ),
      //       icon: Icon(Icons.notifications_outlined, color: Colors.grey),
      //       label: 'Notifications',
      //     ),
      //   ],
      // ),
    );
  }

  Widget _getCard2(Map<String, dynamic> cardMap) {
    return InkWell(
      onTap: () {
        // Get.to(() => Get.);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: cardMap['color'],
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 8.0, right: 20, left: 20, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      child: Text(
                        cardMap['name'],
                        style: TextStyle(color: AppColors.cardTextColor),
                      ),
                    ),
                    Image.asset(cardMap['icon']),
                  ],
                ),
                Text(
                  cardMap['figure'],
                  style: TextStyle(
                      color: AppColors.cardTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

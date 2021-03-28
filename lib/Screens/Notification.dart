import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otasuniversties/Models/NotificationModel.dart';

import '../Resources.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NotificationModel> demonotification = [
    NotificationModel(
        status: 'paid',
        notification: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    NotificationModel(
        status: 'pending',
        notification: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    NotificationModel(
        status: 'pending',
        notification: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    NotificationModel(
        status: 'pending',
        notification: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/200/300'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                    ),
                    child: Text(
                      'Notifications',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                      ),
                      height: Get.height * 0.6,
                      width: Get.width,
                      child: ListView.builder(
                          itemCount: demonotification.length,
                          itemBuilder: (BuildContext context, int index) {
                            return getnotifCard(demonotification[index]);
                          })),
                ],
              ),
              flex: 3,
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

  getnotifCard(NotificationModel studentModel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Get.to(() => ());
        },
        child: Container(
          height: 50,
          color: AppColors.listColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //  width: Get.width * 0.6,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(80.0),
                        child: studentModel.photoUrl != null
                            ? Image.network(
                                studentModel.photoUrl,
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              )
                            : Container(
                                child: Icon(Icons.no_photography),
                                width: 80,
                                height: 80,
                              ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(studentModel.notification)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            studentModel.status,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          // color: Colors.green,
                          width: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

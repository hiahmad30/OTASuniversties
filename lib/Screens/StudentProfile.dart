import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otasuniversties/Models/StudentsModel.dart';
import 'package:otasuniversties/Resources.dart';

class StudentProfile extends StatefulWidget {
  final StudentModel studentModel;

  const StudentProfile({Key key, this.studentModel}) : super(key: key);
  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: AppColors.primaryColor,
        body: Container(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              SvgPicture.asset('assets/back.svg',
                  width: Get.width, fit: BoxFit.fill),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                    height: Get.height * 0.8,
                    width: Get.width,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: widget.studentModel.photoUrl != null
                                    ? Image.network(
                                        widget.studentModel.photoUrl,
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      )
                                    : Container(
                                        child: Icon(Icons.no_photography),
                                        width: 80,
                                        height: 80,
                                      ),
                              ),
                            ),
                          ),
                          Container(
                            width: Get.width * 0.7,
                            child: Text(
                              widget.studentModel.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            widget.studentModel.name,
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 150,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  widget.studentModel.status,
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: widget.studentModel.status == 'paid'
                                        ? Colors.green
                                        : widget.studentModel.status ==
                                                'Awaiting Cond. Acceptance'
                                            ? Color(0xffC15614)
                                            : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                color: widget.studentModel.status == 'paid'
                                    ? Colors.green
                                    : widget.studentModel.status ==
                                            'Awaiting Cond. Acceptance'
                                        ? Color(0xffC15614)
                                        : Colors.grey,
                                // color: Colors.green,
                                width: 1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            widget.studentModel.name,
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 150,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  widget.studentModel.status,
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: widget.studentModel.status == 'paid'
                                        ? Colors.green
                                        : widget.studentModel.status ==
                                                'Awaiting Cond. Acceptance'
                                            ? Color(0xffC15614)
                                            : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                color: widget.studentModel.status == 'paid'
                                    ? Colors.green
                                    : widget.studentModel.status ==
                                            'Awaiting Cond. Acceptance'
                                        ? Color(0xffC15614)
                                        : Colors.grey,
                                width: 1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.book_outlined,
                                            color: AppColors.primaryColor,
                                          ),
                                          Text(
                                            '  PASSPORT',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Text(widget.studentModel.passport,
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: AppColors.primaryColor,
                                          ),
                                          Text(
                                            '  PHONE NUMBER',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 200,
                                        child: Text(widget.studentModel.name,
                                            style:
                                                TextStyle(color: Colors.black)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.email,
                                            color: AppColors.primaryColor,
                                          ),
                                          Text(
                                            '  EMAIL',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 200,
                                        child: Text(widget.studentModel.email,
                                            style:
                                                TextStyle(color: Colors.black)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.pin_drop,
                                            color: AppColors.primaryColor,
                                          ),
                                          Text(
                                            '  ADDRESS',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 200,
                                        child: Text(widget.studentModel.address,
                                            style:
                                                TextStyle(color: Colors.black)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 39.0, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "All Students",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otasuniversties/Models/StudentsModel.dart';

import '../Resources.dart';
import 'StudentProfile.dart';

class AllStudents extends StatefulWidget {
  @override
  _AllStudentsState createState() => _AllStudentsState();
}

class _AllStudentsState extends State<AllStudents> {
  List<StudentModel> demoStudents = [
    StudentModel(
        status: 'pending',
        name: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    StudentModel(
        status: 'pending',
        name: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    StudentModel(
        status: 'pending',
        name: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    StudentModel(
        status: 'pending',
        name: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/200/300'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            child: Stack(
              children: [
                SvgPicture.asset('assets/back.svg',
                    width: Get.width, fit: BoxFit.fill),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 90.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        height: Get.height * 0.7,
                        width: Get.width,
                        child: ListView.builder(
                            itemCount: demoStudents.length,
                            itemBuilder: (BuildContext context, int index) {
                              return getStudentCard(demoStudents[index]);
                            })),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 39.0, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All Students",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        //Add padding around textfield
                        padding:
                            EdgeInsets.only(top: 15.0, left: 10, right: 10),
                        child: Container(
                          width: Get.width * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintStyle: GoogleFonts.rubik(
                                  fontSize: 10,
                                ),
                                hintText:
                                    "Search by Student name or Passport ID…",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getStudentCard(StudentModel studentModel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Get.to(() => StudentProfile(
                studentModel: studentModel,
              ));
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
                      Text(studentModel.name)
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

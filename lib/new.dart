import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dd(BuildContext context, int inx) {
  return Container(
    height: 100.h,
    width: 300.w,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 100.h,
          width: 300.w,
          child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: FirebaseFirestore.instance
                .collection("tasks")
                .doc("CTA")
                .collection('mytasks')
                .snapshots(),
            builder: (BuildContext context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                );
              } else {
                final docs = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          docs[inx]["title"],
                          style: GoogleFonts.outfit(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          docs[inx]["description"],
                          style: GoogleFonts.outfit(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          ),
        ),
      ],
    ),
  );
}

Widget ddd() {
  return Container(
    height: 500.h,
    width: 300.w,
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 500.h,
            width: 300.w,
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream: FirebaseFirestore.instance
                  .collection("taskss")
                  .doc("CTAA")
                  .collection('mytaskss')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(color:  Colors.white,),
                  );
                } else {
                  final docs = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      var datee = DateTime.now();
                      var newDate =
                          DateTime(datee.year, datee.month, datee.day + 5);
                      print(newDate);
                      var dt = DateTime(datee.year, datee.month, datee.day + 3);
                      var dtt =
                          DateTime(datee.year, datee.month, datee.day + 5);
                      var dttt =
                          DateTime(datee.year, datee.month, datee.day + 20);
                      var dtttt =
                          DateTime(datee.year, datee.month, datee.day + 25);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "IMMEDIATE",
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                            title: Text(
                              docs[0]["title"],
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text(
                              datee.toString().substring(0, 10),
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "UPCOMING WEEK",
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                            title: Text(
                              docs[1]["title"],
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text(
                              dt.toString().substring(0, 10),
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          ListTile(
                            title: Text(
                              docs[2]["title"],
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text(
                              dtt.toString().substring(0, 10),
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "THIS MONTH",
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                            title: Text(
                              docs[3]["title"],
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text(
                              dttt.toString().substring(0, 10),
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          ListTile(
                            title: Text(
                              docs[4]["title"],
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text(
                              dtttt.toString().substring(0, 10),
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    ),
  );
}

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthz_app/constants/constants.dart';

Widget ctaTasks(BuildContext context, int inx) {
  return SizedBox(
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
                        commUtil.txt(docs[inx]["title"], Colors.white, 20,
                            FontWeight.w700),
                        SizedBox(
                          height: 5.h,
                        ),
                        commUtil.txt(docs[inx]["description"], Colors.white, 16,
                            FontWeight.w600),
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

Widget upcomingTasks() {
  return SizedBox(
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
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  );
                } else {
                  final docs = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          commUtil.txt(
                              "IMMEDIATE", Colors.white, 22, FontWeight.w700),
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                            title: commUtil.txt(docs[0]["title"], Colors.white,
                                20, FontWeight.w700),
                            subtitle: commUtil.txt(
                                dates.datee.toString().substring(0, 10),
                                Colors.white,
                                16,
                                FontWeight.w600),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          commUtil.txt("UPCOMING WEEK", Colors.white, 22,
                              FontWeight.w700),
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                            title: commUtil.txt(docs[1]["title"], Colors.white,
                                20, FontWeight.w700),
                            subtitle: commUtil.txt(
                                dates.date1.toString().substring(0, 10),
                                Colors.white,
                                16,
                                FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          ListTile(
                            title: commUtil.txt(docs[2]["title"], Colors.white,
                                20, FontWeight.w700),
                            subtitle: commUtil.txt(
                                dates.date2.toString().substring(0, 10),
                                Colors.white,
                                16,
                                FontWeight.w600),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          commUtil.txt(
                              "NEXT MONTH", Colors.white, 22, FontWeight.w700),
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                            title: commUtil.txt(docs[3]["title"], Colors.white,
                                20, FontWeight.w700),
                            subtitle: commUtil.txt(
                                dates.date3.toString().substring(0, 10),
                                Colors.white,
                                16,
                                FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          ListTile(
                            title: commUtil.txt(docs[4]["title"], Colors.white,
                                20, FontWeight.w700),
                            subtitle: commUtil.txt(
                                dates.date4.toString().substring(0, 10),
                                Colors.white,
                                16,
                                FontWeight.w600),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthz_app/constants/constants.dart';
import 'package:healthz_app/new.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexx = 0;

  cta(String txt, int inx) {
    return commUtil.shwdialog(context, ctaTasks(context, inx));
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color(0xFF03022E),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              commUtil.con(80, 80, 20, "images/prof.png"),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "SETTINGS",
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20.h,
              ),
              commUtil.sideDrawer("Name"),
              commUtil.sideDrawer("Email"),
              commUtil.sideDrawer("Phone"),
              commUtil.sideDrawer("Address"),
              commUtil.sideDrawer("Emergency Contact"),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF03022E),
      body: Padding(
        padding:
            EdgeInsets.only(left: 16.w, top: 53.h, right: 16.w, bottom: 18.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 2.5.w,
                  ),
                  InkWell(
                    onTap: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    child: commUtil.con(40, 40, 12, "images/prof.png"),
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  SizedBox(
                      width: 163.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commUtil.txt("Good afternoon", Colors.white, 14,
                              FontWeight.w600),
                          commUtil.txt(
                              "John Doe", Colors.white, 14, FontWeight.bold),
                        ],
                      )),
                  SizedBox(
                    width: 44.25.w,
                  ),
                  Image.asset(
                    "images/Vector.png",
                    height: 19.5.h,
                    width: 19.5.w,
                  ),
                  SizedBox(
                    width: 22.25.w,
                  ),
                  SizedBox(
                      width: 16.w,
                      height: 20.h,
                      child: Image.asset("images/Vectorr.png")),
                ],
              ),
              SizedBox(
                height: 31.h,
              ),
              InkWell(
                onTap: () {
                  commUtil.shwdialog(context, upcomingTasks());
                },
                child: Container(
                  height: 68.h,
                  width: 328.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.w),
                      color: const Color(0xFF1B2152)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      commUtil.con(
                          38,
                          38,
                          0,
                          "images/Ellipse 419.png",
                          const Color(0xFF1B2152),
                          Center(
                            child: commUtil.txt("70 %", const Color(0xFFFFFFFF),
                                11, FontWeight.w700),
                          )),
                      SizedBox(
                        width: 26.w,
                      ),
                      commUtil.txt(
                          "Please complete your profile to book\nconsultations.",
                          const Color(0xFFE1E1E1),
                          12,
                          FontWeight.w400)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              commUtil.txt(
                  "Section Title 1", Colors.white, 16, FontWeight.w600),
              SizedBox(
                height: 18.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      3,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: 17.w),
                        child: InkWell(
                          onTap: () {
                            cta("Task 1", index);
                          },
                          child: Container(
                              height: 122.h,
                              width: 98.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF1B2152),
                                  borderRadius: BorderRadius.circular(14.w)
                                  //image: DecorationImage(image: AssetImage("images/prof.png"),fit: BoxFit.cover)
                                  ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  indexx == index
                                      ? Image.asset(
                                          "images/cta1.png",
                                          fit: BoxFit.cover,
                                          height: 40.h,
                                          width: 40.w,
                                        )
                                      : Image.asset(
                                          "images/cta2.png",
                                          fit: BoxFit.cover,
                                          height: 40.h,
                                          width: 40.w,
                                        ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  commUtil.txt("CTA-1", Colors.white, 13,
                                      FontWeight.w600)
                                ],
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              commUtil.txt(
                  "Section Title 2", Colors.white, 16, FontWeight.w600),
              SizedBox(
                height: 14.h,
              ),
              Container(
                  height: 74.h,
                  width: 328.w,
                  decoration: BoxDecoration(
                      color: const Color(0xFF1B2152),
                      borderRadius: BorderRadius.circular(16.w)
                      //image: DecorationImage(image: AssetImage("images/prof.png"),fit: BoxFit.cover)
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12.w),
                          child: Image.asset(
                            "images/pro2.png",
                            fit: BoxFit.fill,
                            height: 51.h,
                            width: 51.w,
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commUtil.txt(
                                "Roe Rogan", Colors.white, 16, FontWeight.bold),
                            SizedBox(
                              height: 10.h,
                            ),
                            commUtil.txt("Sub Text Shown Here", Colors.white,
                                10, FontWeight.w400),
                            commUtil.txt("Card Description", Colors.white, 10,
                                FontWeight.w400),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 25.h,
                        width: 77.w,
                        decoration: BoxDecoration(
                            color: const Color(0xFF1051E3),
                            borderRadius: BorderRadius.circular(13.w)
                            //image: DecorationImage(image: AssetImage("images/prof.png"),fit: BoxFit.cover)
                            ),
                        child: Center(
                            child: commUtil.txt(
                                "CTA", Colors.white, 12, FontWeight.normal)),
                      ),
                      SizedBox(
                        width: 17.w,
                      )
                    ],
                  )),
              SizedBox(
                height: 29.h,
              ),
              Container(
                height: 328.h,
                width: 328.w,
                decoration: BoxDecoration(
                    color: const Color(0xFF1B2152),
                    borderRadius: BorderRadius.circular(16.w)
                   
                    ),
                child: Padding(
                  padding: EdgeInsets.only(left: 14.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      commUtil.txt(
                          "Card Title", Colors.white, 16, FontWeight.w600),
                      ...List.generate(
                        3,
                        (index) => Padding(
                          padding: EdgeInsets.only(top: 13.h),
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12.w),
                                    child: Image.asset(
                                      "images/art.png",
                                      fit: BoxFit.cover,
                                      height: 52.h,
                                      width: 52.w,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 14.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 0.h),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        commUtil.txt("Article Title",
                                            Colors.white, 12, FontWeight.w500),
                                        SizedBox(
                                          height: 7.h,
                                        ),
                                        commUtil.txt(
                                            "Article excerpt description that runs two lines\nlong shown here",
                                            Colors.white,
                                            10,
                                            FontWeight.w400),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 25.h,
                          width: 102.w,
                          decoration: BoxDecoration(
                              color: const Color(0xFF1051E3),
                              borderRadius: BorderRadius.circular(13.w)
                              //image: DecorationImage(image: AssetImage("images/prof.png"),fit: BoxFit.cover)
                              ),
                          child: Center(
                              child: commUtil.txt("View More", Colors.white, 12,
                                  FontWeight.w500)),
                        ),
                      ),
                      SizedBox(
                        height: 22.h,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              Container(
                height: 77.h,
                width: 328.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.w),
                    color: const Color(0xFF2E2C71)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   commUtil.bot("images/Vector (1).png", "Button-1",
                        const Color(0xFF2075D9)),
                    commUtil.bot("images/Vector (2).png", "Button-2",
                        Colors.transparent),
                    commUtil.bot("images/Vector (3).png", "Button-3",
                        Colors.transparent),
                    commUtil.bot("images/Vector (4).png", "Button-4",
                        Colors.transparent),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}





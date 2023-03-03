import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthz_app/new.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Healthz App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexx = 0;

  cta(String txt, int inx) {
    return showDialog(
        context: context,
        builder: (BuildContext contect) {
          return AlertDialog(
              backgroundColor: Color(0xFF1051E3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              content: dd(context, inx));
        });
  }

  grp() {
    return showDialog(
        context: context,
        builder: (BuildContext contect) {
          return AlertDialog(
              backgroundColor: Color(0xFF1051E3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              content: ddd());
        });
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: Color(0xFF03022E),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    image: DecorationImage(
                        image: AssetImage("images/prof.png"),
                        fit: BoxFit.cover)),
              ),
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
              tt("Name"),
              tt("Email"),
              tt("Phone"),
              tt("Address"),
              tt("Emergency Contact"),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFF03022E),
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
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.w),
                          image: DecorationImage(
                              image: AssetImage("images/prof.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  SizedBox(
                      width: 163.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good afternoon",
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "John Doe",
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold),
                          ),
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
                  // Icon(
                  //   Icons.notifications,
                  //   color: Colors.white,size: 16.w,
                  // ),
                ],
              ),
              SizedBox(
                height: 31.h,
              ),
              InkWell(
                onTap: () {
                  grp();
                },
                child: Container(
                  height: 68.h,
                  width: 328.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.w),
                      color: Color(0xFF1B2152)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                          height: 38.h,
                          width: 38.w,
                          decoration: BoxDecoration(
                              color: Color(0xFF1B2152),
                              image: DecorationImage(
                                  image: AssetImage("images/Ellipse 419.png"),
                                  fit: BoxFit.cover)),
                          child: Center(
                              child: txt("70 %", Color(0xFFFFFFFF), 11.sp,
                                  FontWeight.w700))),
                      SizedBox(
                        width: 26.w,
                      ),
                      txt("Please complete your profile to book\nconsultations.",
                          Color(0xFFE1E1E1), 12.sp, FontWeight.w400)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              txt("Section Title 1", Colors.white, 16.sp, FontWeight.w600),
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
                                  color: Color(0xFF1B2152),
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
                                  txt("CTA-1", Colors.white, 13.sp,
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
              txt("Section Title 2", Colors.white, 16.sp, FontWeight.w600),
              SizedBox(
                height: 14.h,
              ),
              Container(
                  height: 74.h,
                  width: 328.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF1B2152),
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
                            txt("Roe Rogan", Colors.white, 16.sp,
                                FontWeight.bold),
                            SizedBox(
                              height: 10.h,
                            ),
                            txt("Sub Text Shown Here", Colors.white, 10.sp,
                                FontWeight.w400),
                            txt("Card Description", Colors.white, 10.sp,
                                FontWeight.w400),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 25.h,
                        width: 77.w,
                        decoration: BoxDecoration(
                            color: Color(0xFF1051E3),
                            borderRadius: BorderRadius.circular(13.w)
                            //image: DecorationImage(image: AssetImage("images/prof.png"),fit: BoxFit.cover)
                            ),
                        child: Center(
                            child: txt(
                                "CTA", Colors.white, 12.sp, FontWeight.normal)),
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
                    color: Color(0xFF1B2152),
                    borderRadius: BorderRadius.circular(16.w)
                    //image: DecorationImage(image: AssetImage("images/prof.png"),fit: BoxFit.cover)
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
                      txt("Card Title", Colors.white, 16.sp, FontWeight.w600),
                      ...List.generate(
                        3,
                        (index) => Padding(
                          padding: EdgeInsets.only(top: 13.h),
                          child: Container(
                            decoration: BoxDecoration(
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
                                        txt("Article Title", Colors.white,
                                            12.sp, FontWeight.w500),
                                        SizedBox(
                                          height: 7.h,
                                        ),
                                        txt(
                                            "Article excerpt description that runs two lines\nlong shown here",
                                            Colors.white,
                                            10.sp,
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
                      Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 25.h,
                          width: 102.w,
                          decoration: BoxDecoration(
                              color: Color(0xFF1051E3),
                              borderRadius: BorderRadius.circular(13.w)
                              //image: DecorationImage(image: AssetImage("images/prof.png"),fit: BoxFit.cover)
                              ),
                          child: Center(
                              child: txt("View More", Colors.white, 12.sp,
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
                    color: Color(0xFF2E2C71)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bot("images/Vector (1).png", "Button-1", Color(0xFF2075D9)),
                    bot("images/Vector (2).png", "Button-2",
                        Colors.transparent),
                    bot("images/Vector (3).png", "Button-3",
                        Colors.transparent),
                    bot("images/Vector (4).png", "Button-4",
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

Widget txt(String value, Color col, double fs, FontWeight fw) {
  return Text(
    value,
    style: GoogleFonts.outfit(
      color: col,
      fontSize: fs,
      fontWeight: fw,
    ),
  );
}

Widget bot(String img, String val, Color col) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Card(
        elevation: 10,
        color: Color(0xFF2E2C71),
        child: Container(
          height: 28.h,
          width: 28.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.w), color: col),
          child: Image.asset(
            img,
            height: 16.h,
            width: 16.w,
          ),
        ),
      ),
      SizedBox(
        height: 6.h,
      ),
      txt(val, Colors.white, 12.sp, FontWeight.w400)
    ],
  );
}

Widget tt(String name) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: ListTile(
      title: Text(
        name,
        style: GoogleFonts.outfit(
            color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600),
      ),
      tileColor: Color(0xFF1B2152),
    ),
  );
}

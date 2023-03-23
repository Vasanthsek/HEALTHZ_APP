import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CommUtil {
  shwdialog(BuildContext context, Widget wig) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: const Color(0xFF1051E3),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: wig);
      },
    );
  }

  Container con(
    double h,
    double w,
    double r,
    String img, [
    Color? col,
    Widget? child,
  ]) {
    return Container(
      height: h.h,
      width: w.w,
      decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(r.w),
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      child: child,
    );
  }

  Text txt(String val, Color col, double fs, FontWeight fw) {
    return Text(
      val,
      style: GoogleFonts.outfit(color: col, fontSize: fs.sp, fontWeight: fw),
    );
  }

  Widget bot(String img, String val, Color col) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Card(
        elevation: 10,
        color: const Color(0xFF2E2C71),
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
      commUtil.txt(val, Colors.white, 12, FontWeight.w400)
    ],
  );
}

Widget sideDrawer(String name) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: ListTile(
      title: commUtil.txt(name, Colors.white, 16, FontWeight.w600),
      tileColor: const Color(0xFF1B2152),
    ),
  );
}

}

CommUtil commUtil = CommUtil();

class Dates {
  var datee = DateTime.now();
  var date1 = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day + 3);
  var date2 = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day + 5);
  var date3 = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day + 20);
  var date4 = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day + 25);
}

Dates dates = Dates();

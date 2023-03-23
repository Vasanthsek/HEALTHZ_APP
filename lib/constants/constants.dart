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

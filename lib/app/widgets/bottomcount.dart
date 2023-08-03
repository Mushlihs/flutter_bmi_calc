import 'package:bmi/app/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomCount extends StatelessWidget {
  final text;
  final VoidCallback Callback;
  const BottomCount({this.text, required this.Callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Pallete.AppLight,
      onTap: Callback,
      child: Container(
        height: 100.h,
        width: ScreenUtil().scaleWidth,
        decoration: BoxDecoration(
            color: Pallete.Apptheme2,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r))),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.roboto(color: Pallete.AppLight, fontSize: 24.sp),
        )),
      ),
    );
  }
}

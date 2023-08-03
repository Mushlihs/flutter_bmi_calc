import 'package:bmi/app/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WeightCard extends StatelessWidget {
  final type;
  final weight;
  final age;
  final Callback;
  final Function add;
  final Function remove;
  WeightCard(
      {this.type,
      this.weight = 20,
      this.age = 24,
      this.Callback,
      required this.add,
      required this.remove});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 230.h,
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20.h),
        decoration: BoxDecoration(
            color: Pallete.AppLight.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(12.r))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(type == true ? "Weight" : "Age",
                style: GoogleFonts.roboto(
                    color: Pallete.AppLight.withOpacity(0.4),
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w600)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.sp,
                  width: 40.sp,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Pallete.AppLight),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r))),
                  child: IconButton(
                      onPressed: () {
                        remove(type == true ? weight : age);
                      },
                      icon: Icon(
                        Icons.remove_outlined,
                        color: Pallete.AppLight,
                        size: 16,
                      )),
                ),
                Obx(
                  () => Text(type == true ? weight.toString() : age.toString(),
                      style: GoogleFonts.roboto(
                          color: Pallete.AppLight,
                          fontSize: 68.sp,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  height: 40.sp,
                  width: 40.sp,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Pallete.AppLight),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r))),
                  child: IconButton(
                      onPressed: () {
                        add(type == true ? weight : age);
                      },
                      icon: Icon(
                        Icons.add_outlined,
                        color: Pallete.AppLight,
                        size: 16,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

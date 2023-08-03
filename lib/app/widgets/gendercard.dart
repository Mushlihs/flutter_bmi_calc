import 'package:bmi/app/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderCard extends StatelessWidget {
  final male;
  final selected;
  final Function Callback;
  GenderCard({this.male, this.selected, required this.Callback});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Pallete.AppLight,
        onTap: () {
          Callback(male);
        },
        child: Obx(
          () => Container(
            height: 200.h,
            decoration: BoxDecoration(
                color: selected == true
                    ? Pallete.AppLight.withOpacity(0.2)
                    : Pallete.AppLight.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(12.r))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  male == true ? Icons.male_outlined : Icons.female_outlined,
                  size: 70,
                  color: Pallete.Apptheme2,
                ),
                Text(male == true ? "Male" : "Female",
                    style: GoogleFonts.roboto(
                        color: Pallete.AppLight, fontSize: 18.sp)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

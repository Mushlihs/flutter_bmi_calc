import 'package:bmi/app/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HeightCard extends StatelessWidget {
  final Height;
  final Function set;
  const HeightCard({this.Height, required this.set});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      decoration:
          Wstyle.CB12.copyWith(color: Pallete.AppLight.withOpacity(0.1)),
      child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Height",
              style: Tstyle.Main.copyWith(
                  fontSize: 28.sp, color: Pallete.AppLight.withOpacity(0.6)),
            ),
            RichText(
                text: TextSpan(
              text: Height.toString(),
              style: Tstyle.Main.copyWith(
                  fontSize: 48.sp, color: Pallete.AppLight),
              children: [
                TextSpan(
                    text: "cm",
                    style: Tstyle.Main.copyWith(
                        fontSize: 18.sp, color: Pallete.AppLight))
              ],
            )),
            Slider(
              value: Height.value.toDouble(),
              max: 200,
              divisions: 200,
              activeColor: Pallete.Apptheme2,
              onChanged: (value) {
                set(value);
              },
              thumbColor: Pallete.Apptheme2,
            ),
          ],
        ),
      ),
    );
  }
}

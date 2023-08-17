import 'package:bmi/app/routes/app_pages.dart';
import 'package:bmi/app/util/theme.dart';
import 'package:bmi/app/widgets/heightcard.dart';
import 'package:bmi/app/widgets/bottomcount.dart';
import 'package:bmi/app/widgets/gendercard.dart';
import 'package:bmi/app/widgets/weightcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI',
              style:
                  GoogleFonts.roboto(color: Pallete.AppLight, fontSize: 16.sp)),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomCount(
          text: "Calculate",
          Callback: () {
            if (controller.genderF.value == false &&
                controller.genderM.value == false) {
              Get.snackbar("Error", "Please Select gender",
                  backgroundColor: Colors.red.withOpacity(0.7),
                  snackPosition: SnackPosition.TOP);
            } else {
              // Get.snackbar("title", controller.hitung());
              Get.toNamed(Routes.RESULT, arguments: controller.hitung());
            }
          },
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: ScreenUtil().screenWidth,
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GenderCard(
                      male: true,
                      selected: controller.genderM,
                      Callback: controller.selectgender,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    GenderCard(
                      male: false,
                      selected: controller.genderF,
                      Callback: controller.selectgender,
                    ),
                  ]),
            ),
            Container(
              width: ScreenUtil().screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: HeightCard(
                Height: controller.Height,
                set: controller.changslide,
              ),
            ),
            Container(
              width: ScreenUtil().screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                children: [
                  WeightCard(
                    type: true,
                    weight: controller.weight,
                    add: controller.add,
                    remove: controller.reduce,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  WeightCard(
                    type: false,
                    age: controller.age,
                    add: controller.add,
                    remove: controller.reduce,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

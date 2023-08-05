import 'package:bmi/app/util/theme.dart';
import 'package:bmi/app/widgets/bottomcount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Container(
        width: ScreenUtil().screenWidth,
        decoration:
            Wstyle.CB12.copyWith(color: Pallete.AppLight.withOpacity(0.1)),
        padding: EdgeInsetsDirectional.all(20),
        margin: EdgeInsetsDirectional.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              controller.arg[0].toString(),
              style: Tstyle.Main.copyWith(
                  fontSize: 28.sp, color: controller.arg[3]),
            ),
            Text(
              "${controller.arg[1]}",
              style: Tstyle.Main.copyWith(
                  fontSize: 98.sp, color: Pallete.AppLight),
            ),
            Text(
              " Ideal Weight : ${controller.arg[2].toString()}Kg",
              style: Tstyle.Main.copyWith(
                  fontSize: 28.sp, color: Pallete.AppLight),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomCount(
          text: "Re-Calculate",
          Callback: () {
            Get.back();
          }),
    );
  }
}

import 'package:bmi/app/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(540, 960),
      builder: (context, child) => GetMaterialApp(
        title: "BMI Calculator",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                // color: Pallete.Apptheme1,
                backgroundColor: Pallete.Apptheme1,
                elevation: 0),
            scaffoldBackgroundColor: Pallete.Apptheme1),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),
  );
}

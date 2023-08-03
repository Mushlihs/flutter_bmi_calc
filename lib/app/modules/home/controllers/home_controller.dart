import 'package:get/get.dart';

class HomeController extends GetxController {
  var Height = 160.obs;
  var weight = 50.obs;
  var age = 24.obs;
  var genderM = false.obs;
  var genderF = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changslide(value) => Height.value = value;
  void add(target) {
    target.value++;
  }

  void reduce(target) => target.value--;
  void selectgender(gender) {
    if (gender == false) {
      genderF.value = true;
      genderM.value = false;
    } else if (gender == true) {
      genderM.value = true;
      genderF.value = false;
    }
  }

  hitung() {
    double ideal = 0;
    if (genderM == true) {
      ideal = (Height.value - 100) - ((Height.value - 100) * (10 / 100));
    } else if (genderF == true) {
      ideal = (Height.value - 100) - ((Height.value - 100) * (15 / 100));
    }

    double bmi = weight.value / ((Height.value / 100) * (Height.value / 100));
    var result;
    if (bmi < 18.5) {
      result = "Underweight";
    } else if (bmi > 18.5 && bmi < 24.9) {
      result = "Normal weight";
    } else if (bmi > 25.0 && bmi < 29.9) {
      result = "Pre-Obesity";
    } else if (bmi > 30.0) {
      result = "Obesity";
    }
    return [result, bmi, ideal];
  }
}

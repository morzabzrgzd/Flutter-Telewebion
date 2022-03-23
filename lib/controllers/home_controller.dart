import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt sliderIndex = 0.obs;
  RxBool loading = false.obs;
  var sliderController = PageController(keepPage: true, viewportFraction: 1);

  getHomeData() {
    loading(true);
    Future.delayed(const Duration(seconds: 3), () {
      loading(false);
    });
  }

  @override
  void onInit() {
    super.onInit();
    getHomeData();
  }
}

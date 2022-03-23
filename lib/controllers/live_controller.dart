import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LiveController extends GetxController {
  RxInt sliderIndex = 0.obs;
  RxBool loading = false.obs;
  var sliderController = PageController(keepPage: true, viewportFraction: 1);

  getLiveData() {
    loading(true);
    Future.delayed(const Duration(seconds: 1), () {
      loading(false);
    });
  }

  @override
  void onInit() {
    super.onInit();
    getLiveData();
  }
}

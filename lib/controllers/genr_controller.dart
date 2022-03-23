import 'package:get/get.dart';

class GenrController extends GetxController {
  RxBool loading = false.obs;

  getGenrData() {
    loading(true);
    Future.delayed(const Duration(seconds: 1), () {
      loading(false);
    });
  }

  @override
  void onInit() {
    super.onInit();
    getGenrData();
  }
}

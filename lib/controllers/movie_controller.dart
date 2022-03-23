import 'package:get/get.dart';

class MovieController extends GetxController {
  RxBool loading = false.obs;

  getMovieData() {
    loading(true);
    Future.delayed(const Duration(seconds: 1), () {
      loading(false);
    });
  }

  @override
  void onInit() {
    super.onInit();
    getMovieData();
  }
}

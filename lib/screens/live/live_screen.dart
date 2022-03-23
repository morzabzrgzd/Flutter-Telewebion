import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:telewebion/controllers/live_controller.dart';
import 'package:telewebion/helpers/colors.dart';
import '../../models/slider_model.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var liveController = Get.put(LiveController());
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.green,
          body: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: size.height / 4.8,
                    width: double.infinity,
                    child: PageView.builder(
                      scrollBehavior: const ScrollBehavior(
                        androidOverscrollIndicator:
                            AndroidOverscrollIndicator.glow,
                      ),
                      onPageChanged: (value) {
                        liveController.sliderIndex.value = value;
                      },
                      itemCount: sliderLive.length,
                      controller: liveController.sliderController,
                      itemBuilder: (context, index) => Container(
                        width: double.infinity,
                        color: Colors.grey,
                        child: Image.asset(
                          sliderLive[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: size.height * 0.012,
                    left: 0,
                    right: 0,
                    child: Obx(
                      () => Text(
                        sliderLive[liveController.sliderIndex.value]
                            .title
                            .toString()
                            .toPersianDigit(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: size.width * 0.04,
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: size.height * 0.05,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: SmoothPageIndicator(
                        controller: liveController.sliderController,
                        count: sliderLive.length,
                        effect: WormEffect(
                          activeDotColor: kIconColor,
                          dotColor: kIconColor.withOpacity(.5),
                          dotHeight: 7,
                          dotWidth: 7,
                        ), // your preferred effect
                        onDotClicked: (index) {},
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/sabalan.jpg',
                height: 50,
                width: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

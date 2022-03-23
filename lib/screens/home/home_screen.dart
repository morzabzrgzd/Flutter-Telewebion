import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:telewebion/controllers/home_controller.dart';
import 'package:telewebion/helpers/colors.dart';

import 'package:telewebion/helpers/constants.dart';
import 'package:telewebion/models/movie_model.dart';
import 'package:telewebion/models/clips.dart';
import 'package:telewebion/models/slider_model.dart';
import 'package:telewebion/screens/home/components/appbar.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:telewebion/screens/home/components/hard_list.dart';

import 'components/banner.dart';
import 'components/easy_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var homeController = Get.put(HomeController());
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              Obx(
                () => homeController.loading.value == true
                    ? progressIndicator()
                    : SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.07),
                            Slider(size: size, homeController: homeController),
                            const SizedBox(height: 30),
                            const BannerWidget(),
                            const SizedBox(height: 25),
                            ShowMoreWidget(
                              size: size,
                              onTab: () {},
                              title: 'پیشنهاد تلوبیون',
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    proposalTetewebion.length,
                                    (index) => HardHorList(
                                      size: size,
                                      imagePath:
                                          proposalTetewebion[index].imagePath,
                                      onTab: () {},
                                      slug: proposalTetewebion[index].slug,
                                      time: proposalTetewebion[index].time,
                                      title: proposalTetewebion[index].title,
                                      view: proposalTetewebion[index]
                                          .view
                                          .toString(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ShowMoreWidget(
                              size: size,
                              onTab: () {},
                              title: 'فیلم',
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    movies.length,
                                    (index) => EasyHorList(
                                      size: size,
                                      imagePath: movies[index].imagePath,
                                      onTab: () {},
                                      title: movies[index].title,
                                      view: movies[index].view.toString(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ShowMoreWidget(
                              size: size,
                              onTab: () {},
                              title: 'سریال',
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    serials.length,
                                    (index) => EasyHorList(
                                      size: size,
                                      imagePath: serials[index].imagePath,
                                      onTab: () {},
                                      title: serials[index].title,
                                      view: serials[index].view.toString(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ShowMoreWidget(
                              size: size,
                              onTab: () {},
                              title: 'کودکان',
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    childrenMovie.length,
                                    (index) => EasyHorList(
                                      size: size,
                                      imagePath: childrenMovie[index].imagePath,
                                      onTab: () {},
                                      title: childrenMovie[index].title,
                                      view:
                                          childrenMovie[index].view.toString(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            
                            ShowMoreWidget(
                              size: size,
                              onTab: () {},
                              title: 'فوتبال ایران',
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    iranianFootball.length,
                                    (index) => HardHorList(
                                      size: size,
                                      imagePath:
                                          iranianFootball[index].imagePath,
                                      onTab: () {},
                                      slug: iranianFootball[index].slug,
                                      time: iranianFootball[index].time,
                                      title: iranianFootball[index].title,
                                      view: iranianFootball[index]
                                          .view
                                          .toString(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            
                            ShowMoreWidget(
                              size: size,
                              onTab: () {},
                              title: 'فوتبال جهان',
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    worldFootball.length,
                                    (index) => HardHorList(
                                      size: size,
                                      imagePath:
                                          worldFootball[index].imagePath,
                                      onTab: () {},
                                      slug: worldFootball[index].slug,
                                      time: worldFootball[index].time,
                                      title: worldFootball[index].title,
                                      view: worldFootball[index]
                                          .view
                                          .toString(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
              HomeAppBar(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowMoreWidget extends StatelessWidget {
  const ShowMoreWidget({
    Key? key,
    required this.size,
    required this.title,
    required this.onTab,
  }) : super(key: key);

  final Size size;
  final String title;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            title.toPersianDigit(),
            style: TextStyle(
              color: kTextColor,
              fontSize: size.width * 0.042,
            ),
          ),
          const Spacer(),
          InkWell(
            splashColor: Colors.white.withOpacity(.15),
            highlightColor: Colors.grey.withOpacity(.2),
            onTap: onTab,
            child: Ink(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(
                  'مشاهده همه',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.042,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
    required this.size,
    required this.homeController,
  }) : super(key: key);

  final Size size;
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.height / 4.8,
          width: double.infinity,
          child: PageView.builder(
            scrollBehavior: const ScrollBehavior(
              androidOverscrollIndicator: AndroidOverscrollIndicator.glow,
            ),
            onPageChanged: (value) {
              homeController.sliderIndex.value = value;
            },
            itemCount: sliderHome.length,
            controller: homeController.sliderController,
            itemBuilder: (context, index) => Container(
              width: double.infinity,
              color: Colors.grey,
              child: Image.asset(
                sliderHome[index].imageUrl,
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
              sliderHome[homeController.sliderIndex.value]
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
              controller: homeController.sliderController,
              count: sliderHome.length,
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
    );
  }
}

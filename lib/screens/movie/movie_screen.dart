import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:telewebion/controllers/movie_controller.dart';
import 'package:telewebion/helpers/colors.dart';
import 'package:telewebion/helpers/constants.dart';
import 'package:telewebion/models/films_model.dart';
import 'package:telewebion/screens/genre/genr_screen.dart';
import 'package:telewebion/screens/home/home_screen.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var movieController = Get.put(MovieController());
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: kBackgroundColor,
            leading: const BackButton(),
            title: const Text('فیلم'),
          ),
          body: Obx(
            () => movieController.loading.value == true
                ? progressIndicator()
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        ShowMoreWidget(
                          size: size,
                          title: '2021',
                          onTab: () {
                            navigatorPush(
                              context: context,
                              screen: const GenrScreen(genrName: '2021'),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                news.length,
                                (index) => MoviewList(
                                  size: size,
                                  imagePath: news[index].imageUrl,
                                  onTab: () {},
                                  title: news[index].title,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ShowMoreWidget(
                            size: size,
                            title: 'ایرانی',
                            onTab: () {
                              navigatorPush(
                                context: context,
                                screen: const GenrScreen(genrName: 'ایرانی'),
                              );
                            }),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                irani.length,
                                (index) => MoviewList(
                                  size: size,
                                  imagePath: irani[index].imageUrl,
                                  onTab: () {},
                                  title: irani[index].title,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ShowMoreWidget(
                            size: size,
                            title: 'خارجی',
                            onTab: () {
                              navigatorPush(
                                context: context,
                                screen: const GenrScreen(genrName: 'خارجی'),
                              );
                            }),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                films.length,
                                (index) => MoviewList(
                                  size: size,
                                  imagePath: films[index].imageUrl,
                                  onTab: () {},
                                  title: films[index].title,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                films.length,
                                (index) => InkWell(
                                  onTap: () {},
                                  splashColor: Colors.white.withOpacity(.15),
                                  highlightColor: Colors.grey.withOpacity(.2),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    height: 170,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        films[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ShowMoreWidget(
                            size: size,
                            title: 'اکشن',
                            onTab: () {
                              navigatorPush(
                                context: context,
                                screen: const GenrScreen(genrName: 'اکشن'),
                              );
                            }),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                actions.length,
                                (index) => MoviewList(
                                  size: size,
                                  imagePath: actions[index].imageUrl,
                                  onTab: () {},
                                  title: actions[index].title,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                films1.length,
                                (index) => InkWell(
                                  onTap: () {},
                                  splashColor: Colors.white.withOpacity(.15),
                                  highlightColor: Colors.grey.withOpacity(.2),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    height: 170,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        films1[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ShowMoreWidget(
                            size: size,
                            title: 'هندی',
                            onTab: () {
                              navigatorPush(
                                context: context,
                                screen: const GenrScreen(genrName: 'هندی'),
                              );
                            }),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                hindi.length,
                                (index) => MoviewList(
                                  size: size,
                                  imagePath: hindi[index].imageUrl,
                                  onTab: () {},
                                  title: hindi[index].title,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ShowMoreWidget(
                            size: size,
                            title: 'کره ای',
                            onTab: () {
                              navigatorPush(
                                context: context,
                                screen: const GenrScreen(genrName: 'کره ای'),
                              );
                            }),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                kore.length,
                                (index) => MoviewList(
                                  size: size,
                                  imagePath: kore[index].imageUrl,
                                  onTab: () {},
                                  title: kore[index].title,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ShowMoreWidget(
                            size: size,
                            title: 'انیمیشن سینمایی',
                            onTab: () {
                              navigatorPush(
                                context: context,
                                screen: const GenrScreen(
                                    genrName: 'انیمیشن سینمایی'),
                              );
                            }),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                animations.length,
                                (index) => MoviewList(
                                  size: size,
                                  imagePath: animations[index].imageUrl,
                                  onTab: () {},
                                  title: animations[index].title,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class MoviewList extends StatelessWidget {
  const MoviewList({
    Key? key,
    required this.size,
    required this.imagePath,
    required this.title,
    required this.onTab,
  }) : super(key: key);

  final Size size;
  final String imagePath;
  final String title;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white.withOpacity(.15),
      highlightColor: Colors.grey.withOpacity(.2),
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 150,
        height: 260,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 150,
              height: 215,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title.toString().toPersianDigit(),
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.width * 0.038,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

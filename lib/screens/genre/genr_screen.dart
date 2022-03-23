import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:telewebion/controllers/genr_controller.dart';
import 'package:telewebion/helpers/constants.dart';
import 'package:telewebion/models/films_model.dart';

import '../../helpers/colors.dart';

class GenrScreen extends StatefulWidget {
  const GenrScreen({Key? key, required this.genrName}) : super(key: key);

  final String genrName;

  @override
  State<GenrScreen> createState() => _GenrScreenState();
}

class _GenrScreenState extends State<GenrScreen> {
  var genrController = Get.put(GenrController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: kBackgroundColor,
            leading: const BackButton(),
            title: Text(widget.genrName.toString().toPersianDigit()),
          ),
          body: Obx(
            () => genrController.loading.value == true
                ? progressIndicator()
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1 / 2,
                    ),
                    itemCount: genrs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          splashColor: Colors.white.withOpacity(.15),
                          highlightColor: Colors.grey.withOpacity(.2),
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: AspectRatio(
                                    aspectRatio: 1 / 1.7,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        genrs[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    genrs[index]
                                        .title
                                        .toString()
                                        .toPersianDigit(),
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
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}

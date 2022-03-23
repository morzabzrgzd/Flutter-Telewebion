// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telewebion/screens/movie/movie_screen.dart';

import '../../../helpers/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      width: double.infinity,
      color: kBackgroundColor.withOpacity(.8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/images/Telewebion-Logo.png',
                width: 32,
                height: 32,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MovieScreen(),
                        ),);
                  },
                  child: Text(
                    'فیلم',
                    style: TextStyle(
                        color: kTextColor, fontSize: size.width * 0.045),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'سریال',
                    style: TextStyle(
                        color: kTextColor, fontSize: size.width * 0.045),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'کارتون',
                    style: TextStyle(
                        color: kTextColor, fontSize: size.width * 0.045),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

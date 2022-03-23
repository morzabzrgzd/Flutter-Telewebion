import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../helpers/colors.dart';


class HardHorList extends StatelessWidget {
  const HardHorList(
      {Key? key,
      required this.size,
      required this.onTab,
      required this.time,
      required this.title,
      required this.view,
      required this.slug,
      required this.imagePath})
      : super(key: key);

  final Size size;
  final VoidCallback onTab;
  final String time;
  final String title;
  final String imagePath;
  final String view;
  final String slug;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white.withOpacity(.15),
      highlightColor: Colors.grey.withOpacity(.2),
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 175,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 175,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(top: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.6),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    '$time دقیقه'.toString().toPersianDigit(),
                    style: TextStyle(
                        color: kTextColor, fontSize: size.width * 0.025),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.width * 0.038,
                ),
              ),
            ),
            Text(
              slug.toString().toPersianDigit(),
              style: TextStyle(
                color: Colors.grey,
                fontSize: size.width * 0.038,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  view.toString().seRagham().toPersianDigit(),
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: size.width * 0.03,
                  ),
                ),
                Text(
                  ' بازدید',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: size.width * 0.03,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

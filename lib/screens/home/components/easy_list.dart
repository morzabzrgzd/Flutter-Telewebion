import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../helpers/colors.dart';

class EasyHorList extends StatelessWidget {
  const EasyHorList(
      {Key? key,
      required this.size,
      required this.onTab,
      required this.title,
      required this.imagePath,
      required this.view})
      : super(key: key);

  final Size size;
  final VoidCallback onTab;
  final String title;
  final String imagePath;
  final String view;

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

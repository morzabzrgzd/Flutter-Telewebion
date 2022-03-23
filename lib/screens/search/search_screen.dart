
import 'package:flutter/material.dart';
import 'package:telewebion/helpers/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          
        ),
      ),
    );
  }
}

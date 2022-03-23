import 'package:flutter/material.dart';
import 'package:telewebion/helpers/colors.dart';

class ArchiveScreen extends StatelessWidget {
  const ArchiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          body: Text('ArchiveScreen',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

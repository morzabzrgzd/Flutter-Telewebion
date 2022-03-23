import 'package:flutter/material.dart';
import 'package:telewebion/helpers/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          body: Text('ProfileScreen',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

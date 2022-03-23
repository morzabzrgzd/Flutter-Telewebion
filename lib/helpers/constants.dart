import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

progressIndicator() {
  return const Center(
    child: CupertinoActivityIndicator(
      radius: 12,
      color: Colors.white,
    ),
  );
}

navigatorPush({screen, context}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => screen
    ),
  );
}

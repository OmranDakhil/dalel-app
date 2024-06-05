import 'package:dalel1/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Image.asset(Assets.imagesOnBoarding1),
        ),
      ),
    );
  }
}

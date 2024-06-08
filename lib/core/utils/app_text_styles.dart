import 'package:dalel1/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const TextStyle pacifico400style64 = TextStyle(
    fontSize: 64,
    fontFamily: "Pacifico",
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
  );

  static const TextStyle poppins400style16 = TextStyle(
    fontSize: 16,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static const TextStyle poppins500style24 = TextStyle(
    fontSize: 24,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const TextStyle poppins300style16 = TextStyle(
    fontSize: 16,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );

  static const TextStyle poppins500style18 = TextStyle(
    fontSize: 18,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}

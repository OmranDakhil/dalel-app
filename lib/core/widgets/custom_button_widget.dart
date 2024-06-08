import 'package:dalel1/core/utils/app_colors.dart';
import 'package:dalel1/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const CustomButtonWidget({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            title,
            style: AppTextStyles.poppins500style18,
          )),
    );
  }
}

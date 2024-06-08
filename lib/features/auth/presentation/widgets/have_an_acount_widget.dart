import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class HaveAnAccount extends StatelessWidget {
  final String text1, text2;
  const HaveAnAccount({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        textAlign: TextAlign.center,
        TextSpan(children: [
          TextSpan(
            text: text1,
            style: AppTextStyles.poppins400style12,
          ),
          TextSpan(
            text: text2,
            style: AppTextStyles.poppins400style12.copyWith(
              color: AppColors.lightGrey,
            ),
          ),
        ]));
  }
}

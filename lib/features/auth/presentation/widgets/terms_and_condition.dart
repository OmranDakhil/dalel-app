import 'package:dalel1/features/auth/presentation/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        const SizedBox(width: 8),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "I agree to our ",
              style: AppTextStyles.poppins400style14
                  .copyWith(color: AppColors.deepGrey, fontSize: 12)),
          TextSpan(
              text: "terms and conditions",
              style: AppTextStyles.poppins400style14.copyWith(
                  decoration: TextDecoration.underline,
                  color: AppColors.deepGrey,
                  fontSize: 12))
        ]))
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        "welcome",
        style: AppTextStyles.poppins600style28,
      ),
    );
  }
}

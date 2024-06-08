import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';

class SkipButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  const SkipButtonWidget({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        child: const Text(
          "skip",
          style: AppTextStyles.poppins400style16,
        ),
      ),
    );
  }
}

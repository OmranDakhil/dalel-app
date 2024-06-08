import 'package:dalel1/core/utils/app_colors.dart';
import 'package:dalel1/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/widgets/custom_button_widget.dart';
import '../../data/models/on_boarding_body_model.dart';

class GetButtons extends StatelessWidget {
  final int currentPage;
  final PageController controller;
  const GetButtons(
      {super.key, required this.currentPage, required this.controller});

  @override
  Widget build(BuildContext context) {
    return currentPage == onBoardingData.length - 1
        ? Column(
            children: [
              CustomButtonWidget(
                title: "Create Account",
                onPressed: () {
                  customReplacmentNavigate(context, "/signUp");
                },
              ),
              const SizedBox(height: 16),
              TextButton(
                  onPressed: () {
                    customReplacmentNavigate(context, "/signIn");
                  },
                  child: Text(
                    "Login Now",
                    style: AppTextStyles.poppins400style16.copyWith(
                      decoration: TextDecoration.underline,
                      color: AppColors.deepGrey,
                    ),
                  ))
            ],
          )
        : CustomButtonWidget(
            title: "next",
            onPressed: () {
              controller.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            },
          );
  }
}

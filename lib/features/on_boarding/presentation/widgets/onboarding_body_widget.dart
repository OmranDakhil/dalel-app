import 'package:dalel1/core/utils/app_text_styles.dart';
import 'package:dalel1/features/on_boarding/presentation/widgets/smooth_page_indicator_widget.dart';
import 'package:flutter/material.dart';

import '../../data/models/on_boarding_body_model.dart';

class OnBoardingBodyWidget extends StatelessWidget {
  final PageController controller;
  final void Function(int)? onPageChanged;
  const OnBoardingBodyWidget(
      {super.key, required this.controller, this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 343,
                height: 290,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingData[index].imagePath),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SmoothPageIndicatorWidget(controller: controller),
              Text(
                onBoardingData[index].title,
                style: AppTextStyles.poppins500style24,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                onBoardingData[index].subTitle,
                style: AppTextStyles.poppins300style16,
                textAlign: TextAlign.center,
              )
            ],
          );
        },
      ),
    );
  }
}

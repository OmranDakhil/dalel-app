import 'package:dalel1/core/functions/navigation.dart';
import 'package:dalel1/core/widgets/custom_button_widget.dart';
import 'package:dalel1/features/on_boarding/data/models/on_boarding_body_model.dart';
import 'package:dalel1/features/on_boarding/presentation/views/functions/onboarding.dart';
import 'package:flutter/material.dart';

import '../../../../core/database/cache_helper.dart';
import '../../../../core/services/service_locater.dart';
import '../widgets/get_buttons.dart';
import '../widgets/onboarding_body_widget.dart';
import '../widgets/skip_button_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 40),
              SkipButtonWidget(
                onPressed: () {
                  onBoardingVisited();
                  customReplacmentNavigate(context, "/signIn");
                },
              ),
              const SizedBox(height: 32),
              OnBoardingBodyWidget(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                controller: controller,
              ),
              GetButtons(currentPage: currentPage, controller: controller),
              const SizedBox(height: 17)
            ],
          ),
        ),
      ),
    );
  }
}

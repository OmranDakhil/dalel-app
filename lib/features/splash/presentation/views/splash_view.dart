import 'package:dalel1/core/functions/navigation.dart';
import 'package:dalel1/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigation(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Dalel",
        style: AppTextStyles.pacifico400style64,
      )),
    );
  }
}

delayedNavigation(context) {
  return Future.delayed(
    const Duration(seconds: 2),
    () {
      customReplacmentNavigate(context, "/onBoarding");
    },
  );
}

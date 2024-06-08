import 'package:dalel1/core/utils/app_colors.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const Dalel()));
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.offWhite,
        ),
        //debugShowCheckedModeBanner: false,
        routerConfig: router);
  }
}

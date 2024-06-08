import 'package:dalel1/core/database/cache_helper.dart';
import 'package:dalel1/core/services/service_locater.dart';
import 'package:dalel1/core/utils/app_colors.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await getIt<CacheHelper>().init();
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

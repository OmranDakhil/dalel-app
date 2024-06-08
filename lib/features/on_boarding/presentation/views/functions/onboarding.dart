import 'package:dalel1/core/database/cache_helper.dart';

import '../../../../../core/services/service_locater.dart';

onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "onBoardingVisited", value: true);
}

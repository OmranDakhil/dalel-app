import 'package:dalel1/features/auth/presentation/views/Sign_in.dart';
import 'package:dalel1/features/auth/presentation/views/sign_up.dart';
import 'package:dalel1/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/on_boarding/presentation/views/on_boarding_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnBoardingView(),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => const SignInView(),
  ),
  GoRoute(
    path: "/signUp",
    builder: (context, state) => const SignUpView(),
  ),
]);

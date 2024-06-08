import 'package:go_router/go_router.dart';

customNavigate(context, path) {
  GoRouter.of(context).push(path);
}

customReplacmentNavigate(context, path) {
  GoRouter.of(context).pushReplacement(path);
}

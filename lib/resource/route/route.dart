import 'package:get/get.dart';
import 'package:get_mvvm/resource/route/route_name.dart';
import 'package:get_mvvm/view/splash_screen.dart';

class AppRoute {
  static approutes() => [
        GetPage(
            name: RouteName.SplashScreen,
            page: () => const SplashScreen(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: Duration(seconds: 2)),
      ];
}

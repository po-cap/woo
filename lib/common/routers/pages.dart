import 'package:get/get.dart';
import 'package:woo/common/routers/index.dart';
import 'package:woo/pages/index.dart';



class RoutePages {

  // 歷史紀錄
  static List<String> history = [];

  // 观察者
  static RouteObservers observer = RouteObservers();

  // 列表
  static List<GetPage> list = [
     GetPage(
        name: RouteNames.systemLogin,
        page: () => const LoginPage(),
        binding: LoginBinding(),
      ),
      GetPage(
        name: RouteNames.systemMain,
        page: () => const MainPage(),
      ),
      GetPage(
        name: RouteNames.systemSplash,
        page: () => const SplashPage(),
      ),
  ];
}

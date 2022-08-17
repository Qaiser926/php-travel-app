
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:php_travalapp/app/modules/homePage/HomeView/homeView.dart';
import 'package:php_travalapp/app/modules/homePage/binding/homeBinding.dart';
import 'package:php_travalapp/app/modules/homePage/bottomNav/bottomNavigation.dart';
import 'package:php_travalapp/app/modules/homePage/component/menu_filterPage/dataFilteration.dart';
import 'package:php_travalapp/routes/app_routes/app_route.dart';

class AppPages{

  static const INITIAL=Routes.bottomnav;

  static final routes=[
    GetPage(
      name: path.bottomnav,
      page: () =>BottomNavigationBarPage(),
      // binding: SplashBinding(),
    ),
    GetPage(
      name: path.home,
      page: () =>HomeViewPage(),
      binding: HomeBindingPage(),
    ),
    GetPage(
      name: path.filterationpage,
      page: () =>DataFilteration(),
  transition: Transition.rightToLeft),

      // binding: HomeBindingPage(),

  ];
}
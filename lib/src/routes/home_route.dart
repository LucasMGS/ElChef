import 'package:elchef/src/core/constants/routes.dart';
import 'package:elchef/src/modules/Home/home.dart';
import 'package:elchef/src/modules/Home/home_bindings.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/Home/home_page.dart';

class HomeRoute {
  HomeRoute._();

  static final routers = <GetPage>[
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => const Home(),
      binding: HomeBinding(),
    ),
  ];
}

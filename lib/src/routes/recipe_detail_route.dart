import 'package:elchef/src/core/constants/routes.dart';
import 'package:elchef/src/modules/RecipeDetail/recipe_detail_binding.dart';
import 'package:elchef/src/modules/RecipeDetail/recipe_detail_page.dart';
import 'package:get/route_manager.dart';

class RecipeDetailRoute {
  RecipeDetailRoute._();

  static final routers = <GetPage>[
    GetPage(
      name: Routes.RECIPE_DETAIL,
      page: () => const RecipeDetailPage(),
      binding: RecipeDetailBinding(),
    ),
  ];
}

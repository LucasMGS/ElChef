import 'package:elchef/src/routes/home_route.dart';
import 'package:elchef/src/routes/recipe_detail_route.dart';

class AppPages {
  static final routes = [
    ...HomeRoute.routers,
    ...RecipeDetailRoute.routers,
  ];
}

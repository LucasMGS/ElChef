import 'package:elchef/src/modules/Home/home_controller.dart';
import 'package:elchef/src/repositories/recipes/irecipe_repository.dart';
import 'package:elchef/src/repositories/recipes/search_recipe_repository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IRecipeRepository>(() => RecipeRepository());
    Get.put(HomeController(), permanent: true);
  }
}

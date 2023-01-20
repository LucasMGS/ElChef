import 'package:elchef/src/repositories/recipes/irecipe_repository.dart';
import 'package:elchef/src/repositories/recipes/recipe_repository.dart';
import 'package:get/get.dart';

class RecipeDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IRecipeRepository>(() => RecipeRepository());
  }
}

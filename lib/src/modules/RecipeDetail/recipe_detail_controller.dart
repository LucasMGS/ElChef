import 'package:elchef/src/models/recipe_information_model.dart';
import 'package:elchef/src/repositories/recipes/irecipe_repository.dart';
import 'package:get/get.dart';

class RecipeDetailController extends GetxController {
  final IRecipeRepository _recipeRepository = Get.find();

  Rx<RecipeInformation> recipeInformation =
      Rx<RecipeInformation>(RecipeInformation());

  final int recipeId;
  RecipeDetailController({required this.recipeId});

  Future<void> getRecipeInformation(int recipeId) async {
    recipeInformation.value =
        await _recipeRepository.getRecipeInformation(recipeId);
    print(recipeInformation.value);
  }

  @override
  void onInit() {
    getRecipeInformation(recipeId);
    super.onInit();
  }
}

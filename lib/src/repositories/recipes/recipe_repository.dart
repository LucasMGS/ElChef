import 'package:elchef/src/core/api/spoonacular_api.dart';
import 'package:elchef/src/models/recipe_information_model.dart';
import 'package:elchef/src/models/spoon_response_model.dart';
import 'package:elchef/src/repositories/recipes/irecipe_repository.dart';

class RecipeRepository extends IRecipeRepository {
  final String recipes = 'recipes';

  @override
  Future<SpoonResponse> getRecipesByCuisine(String cuisine,
      {bool? includeRecipeInformation, bool? includeRecipeNutrition}) async {
    final response = await spoonacular.get(
        '/$recipes/complexSearch?cuisine=$cuisine&addRecipeInformation=${includeRecipeInformation ?? false}&addRecipeNutrition=${includeRecipeNutrition ?? false}');
    print(response.data);
    final spoonResult = SpoonResponse.fromJson(response.data);
    return spoonResult;
  }

  @override
  Future<RecipeInformation> getRecipeInformation(int recipeId,
      {bool includeNutrition = false}) async {
    final response = await spoonacular.get(
        '/$recipes/$recipeId/information?includeNutrition=$includeNutrition');
    final recipeInformation = RecipeInformation.fromJson(response.data);
    print(recipeInformation.image);
    return recipeInformation;
  }

  @override
  Future<SpoonResponse> getRecipesByType(String type,
      {bool? includeRecipeInformation, bool? includeRecipeNutrition}) async {
    final response = await spoonacular.get(
        '/$recipes/complexSearch?type=$type&addRecipeInformation=${includeRecipeInformation ?? false}&addRecipeNutrition=${includeRecipeNutrition ?? false}');
    print(response.data);
    final spoonResult = SpoonResponse.fromJson(response.data);
    return spoonResult;
  }
}

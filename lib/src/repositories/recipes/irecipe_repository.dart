import 'package:elchef/src/models/recipe_information_model.dart';
import 'package:elchef/src/models/spoon_response_model.dart';

abstract class IRecipeRepository {
  Future<SpoonResponse> getRecipesByCuisine(String cuisine,
      {bool? includeRecipeInformation, bool? includeRecipeNutrition});
  Future<RecipeInformation> getRecipeInformation(int recipeId);
  Future<SpoonResponse> getRecipesByType(String type,
      {bool? includeRecipeInformation, bool? includeRecipeNutrition});
}

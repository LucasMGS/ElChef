import 'package:elchef/src/models/spoon_response_model.dart';

abstract class IRecipeRepository {
  Future<SpoonResponse> getItalianRecipes();
  Future<SpoonResponse> getRecipeInformation(int recipeId);
}

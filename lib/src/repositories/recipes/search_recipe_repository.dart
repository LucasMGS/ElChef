import 'package:elchef/src/core/api/spoonacular_api.dart';
import 'package:elchef/src/models/spoon_response_model.dart';
import 'package:elchef/src/repositories/recipes/irecipe_repository.dart';

class RecipeRepository extends IRecipeRepository {
  final String recipes = 'recipes';

  @override
  Future<SpoonResponse> getItalianRecipes() async {
    final response =
        await spoonacular.get('/$recipes/complexSearch?cuisine=Italian');
    final spoonResult = SpoonResponse.fromJson(response.data);
    return spoonResult;
  }

  Future<SpoonResponse> getRecipeInformation(int recipeId) async {
    final response = await spoonacular.get('/$recipes/$recipeId/information');
    final spoonResult = SpoonResponse.fromJson(response.data);
    return spoonResult;
  }
}

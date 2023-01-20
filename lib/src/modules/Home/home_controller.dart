import 'package:elchef/src/models/results_model.dart';
import 'package:elchef/src/repositories/recipes/irecipe_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final IRecipeRepository _recipeRepository = Get.find();

  Rx<int> currentIndex = Rx<int>(0);
  RxList<Results> breakfastRecipes = RxList<Results>();
  RxList<Results> dessertRecipes = RxList<Results>();
  Rx<int> totalDesserts = 0.obs;

  setCurrentIndex(int newIndex) {
    currentIndex.value = newIndex;
  }

  Future<void> getBreakFastRecipes() async {
    final spoonResponse = await _recipeRepository.getRecipesByType('breakfast');
    final randomRecipes = spoonResponse.results;
    breakfastRecipes.value = randomRecipes!;
  }

  Future<void> getDessertRecipes() async {
    final spoonResponse = await _recipeRepository.getRecipesByType('dessert');
    final randomRecipes = spoonResponse.results;
    totalDesserts.value = spoonResponse.totalResults!;
    dessertRecipes.value = randomRecipes!;
  }

  @override
  void onInit() {
    super.onInit();
    getBreakFastRecipes();
    getDessertRecipes();
  }
}

import 'package:elchef/src/models/results_model.dart';
import 'package:elchef/src/repositories/recipes/irecipe_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final IRecipeRepository _recipeRepository = Get.find();

  Rx<int> currentIndex = Rx<int>(0);
  RxList<Results> italianFoods = RxList<Results>();

  setCurrentIndex(int newIndex) {
    currentIndex.value = newIndex;
  }

  Future<void> getItalianFoods() async {
    final spoonResponse = await _recipeRepository.getItalianRecipes();
    final italianRecipes = spoonResponse.results;
    italianFoods.value = italianRecipes!;
  }

  @override
  void onInit() {
    super.onInit();
    getItalianFoods();
  }
}

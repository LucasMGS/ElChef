import 'package:elchef/src/core/constants/routes.dart';
import 'package:elchef/src/core/data/home_cuisine_recipes.dart';
import 'package:elchef/src/core/data/home_diets_recipes.dart';
import 'package:elchef/src/core/shared/widgets/home_horizontal_carousel_widget.dart';
import 'package:elchef/src/core/shared/widgets/search_bar_widget.dart';
import 'package:elchef/src/modules/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(20),
                    child: const Text(
                      'Rua Fortaleza,244',
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.arrow_drop_down_circle_rounded))
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 7),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'O que vamos cozinhar hoje, Lucas?',
                  textAlign: TextAlign.start,
                ),
              ),
              const SearchBar(),
              const SizedBox(height: 20),
              Text(
                'Sobremesas',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              Obx(
                () => SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: controller.dessertRecipes.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final recipe = controller.dessertRecipes[index];
                            return InkWell(
                              onTap: () => Get.toNamed(Routes.RECIPE_DETAIL,
                                  arguments: {'recipeId': recipe.id}),
                              child: Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    top: 7, bottom: 7, right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(recipe.image!),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.black54,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      alignment: Alignment.bottomLeft,
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // alignment: Alignment.centerLeft,
                                            padding: const EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 1,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    spreadRadius: 1,
                                                    blurStyle: BlurStyle.solid,
                                                  ),
                                                ]),
                                            child: Text(
                                              'Sobremesa',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            recipe.title!,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                            ),
                                          ),
                                          Text(
                                            '${controller.totalDesserts} receitas',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                ),
              ),

              // const SizedBox(height: 20),
              // const Text('Cozinhas'),
              // HomeHorizontalCarousel(options: homeCuisineRecipes),
              // const SizedBox(height: 10),
              // const Text('Dietas'),
              // HomeHorizontalCarousel(options: homeDietsRecipes),
              // const SizedBox(height: 20),
              // const Text('Recomendados'),
              const SizedBox(height: 10),
              Text(
                'Café da manhã',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              Obx(
                () => controller.breakfastRecipes.isEmpty
                    ? const Center(
                        child: Text('Sem receitas italianas'),
                      )
                    : ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: controller.breakfastRecipes.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final recipe = controller.breakfastRecipes[index];
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(recipe.image!),
                                fit: BoxFit.cover,
                              ),
                            ),
                            height: 250,
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  alignment: Alignment.topLeft,
                                  padding: const EdgeInsets.all(15),
                                  // height: 100,
                                  child: Text(
                                    recipe.title!,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

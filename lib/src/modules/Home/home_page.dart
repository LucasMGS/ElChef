import 'package:elchef/src/core/shared/widgets/search_bar_widget.dart';
import 'package:elchef/src/modules/Home/home_controller.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              margin: const EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: const Text(
                'O que vamos cozinhar hoje, Lucas?',
                textAlign: TextAlign.start,
              ),
            ),
            const SearchBar(),
            const SizedBox(height: 20),
            Obx(
              () => controller.italianFoods.isEmpty
                  ? const Center(
                      child: Text('Sem receitas italianas'),
                    )
                  : ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.italianFoods.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final italianRecipe = controller.italianFoods[index];
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(italianRecipe.image!),
                              fit: BoxFit.cover,
                            ),
                          ),
                          margin: const EdgeInsets.all(10),
                          height: 300,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.all(15),
                                height: 120,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      italianRecipe.title!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    Text(
                                      '${Faker().randomGenerator.integer(300)} calorias',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              backgroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              foregroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary),
                                          onPressed: () {},
                                          child:
                                              const Icon(Icons.favorite_border),
                                        ),
                                        const SizedBox(width: 10),
                                        OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              backgroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              foregroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary),
                                          onPressed: () {},
                                          child: const Text('Ver receita'),
                                        ),
                                      ],
                                    ),
                                  ],
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
    );
  }
}

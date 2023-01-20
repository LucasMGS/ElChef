import 'package:elchef/src/modules/RecipeDetail/recipe_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: GetBuilder(
            init: RecipeDetailController(recipeId: Get.arguments['recipeId']),
            builder: (controller) {
              return Stack(
                fit: StackFit.passthrough,
                children: [
                  Obx(
                    () => controller.recipeInformation.value.image == null
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(
                                controller.recipeInformation.value.image!,
                              ),
                              fit: BoxFit.cover,
                            )),
                          ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                ],
              );
            }),
      ),
    );
  }
}

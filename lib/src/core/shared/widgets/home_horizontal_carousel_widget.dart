import 'package:elchef/src/models/recipe_option.dart';
import 'package:flutter/material.dart';

class HomeHorizontalCarousel extends StatelessWidget {
  final List<RecipeOption> options;
  const HomeHorizontalCarousel({Key? key, required this.options})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: options.length,
          itemBuilder: (context, index) {
            final option = options[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  width: 70,
                  color: Colors.red,
                ),
                Text(
                  option.title,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          }),
    );
  }
}

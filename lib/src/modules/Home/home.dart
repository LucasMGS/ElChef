import 'package:elchef/src/modules/Favorites/favorites_page.dart';
import 'package:elchef/src/modules/Home/home_controller.dart';
import 'package:elchef/src/modules/Home/home_page.dart';
import 'package:elchef/src/modules/Profile/profile_page.dart';
import 'package:elchef/src/modules/Search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const pages = [
      HomePage(),
      SearchPage(),
      FavoritesPage(),
      ProfilePage(),
    ];

    return Obx(
      () => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: pages[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (value) => controller.setCurrentIndex(value),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Procurar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favoritos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Perfil'),
          ],
        ),
      ),
    );
  }
}

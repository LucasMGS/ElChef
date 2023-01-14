import 'package:elchef/src/core/constants/routes.dart';
import 'package:elchef/src/elChef_theme.dart';
import 'package:elchef/src/initial_bindings.dart';
import 'package:elchef/src/routes/app_pages.dart/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindings(),
      debugShowCheckedModeBanner: false,
      title: 'El Chef',
      getPages: AppPages.routes,
      initialRoute: Routes.HOME_PAGE,
      theme: getElChefTheme(),
    );
  }
}

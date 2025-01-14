import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/Fvaourite page/favourite_controller.dart';
import 'view/dashboard/dashboard_page.dart';

void main() {
  runApp(const MyApp());
   Get.put(FavoriteController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      // theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Dashboard()), // Entry point is the Dashboard
      ],
    );
  }
}

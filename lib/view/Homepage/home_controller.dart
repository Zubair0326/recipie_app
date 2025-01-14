import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../category_page/Italian.dart';
import '../category_page/gujrati.dart';
import '../category_page/mexican.dart';
import '../category_page/punjabi.dart';

class HomePageController extends GetxController {
  // Use RxList for categories
  var categories = <Map<String, dynamic>>[].obs;

  // Selected index
  var selectedIndex = 0.obs;

  // Update the selected index
  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  // Navigate to the target page
  void navigateToPage(Widget page) {
    Get.to(() => page);
  }

  // Initialize categories in the controller
  @override
  void onInit() {
    super.onInit();
    // Populate the categories list
    categories.addAll([
      {
        'icon': Icons.local_pizza,
        'title': 'Italian',
        'page': Italian(), // Example page
      },
      {
        'icon': Icons.rice_bowl,
        'title': 'Punjabi',
        'page': Punjabi(), // Add appropriate page here
      },
      {
        'icon': Icons.fastfood,
        'title': 'Mexican',
        'page': Mexican(), // Add appropriate page here
      },
       {
        'icon': Icons.fork_left,
        'title': 'Gujarati',
        'page': Gujarati(), // Add appropriate page here
      },
    ]);
  }
}

import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0; // Default index set to 0 (Home tab)

  void changeTabIndex(int index) {
    tabIndex = index; // Update the current tab index
    update(); // Notify listeners to rebuild
  }
}

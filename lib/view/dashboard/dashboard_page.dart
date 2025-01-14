import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Add recipie/add_recipie.dart';
import '../Fvaourite page/favourite_Screen.dart';
import '../Homepage/home_page.dart';
import '../Settings page/settings_page.dart';
import 'dashboard_controller.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key}); // Constructor for the widget

  // Initialize the controller using Get.put()
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          
          body: Container(
            // color: AppColors.secondaryColor,
            child: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  HomePage(), // Replace with actual home page widget
                  FavoriteScreen(),
                  AddRecipie(),
                  SettingsPage(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.yellow, // Set the background color to yellow directly here
            unselectedItemColor: Colors.black, // Set unselected icon color to black
            selectedItemColor: Colors.black, // Set selected icon color to black
            onTap: controller.changeTabIndex, // Changes the tab index
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 5, // Optional, adds shadow to the bottom nav bar
            items: [
              _bottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart),
                label: 'Favourite',
              ),
              _bottomNavigationBarItem(
                icon: Icon(CupertinoIcons.add),
                label: 'Add',
              ),
              _bottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required Icon icon, required String label}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}

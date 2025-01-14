import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeSelectionPage extends StatelessWidget {
  const ThemeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Theme')),
      body: SafeArea(
        child: ListView(
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              elevation: 5,
              child: ListTile(
                title: Text('Light Theme'),
                onTap: () {
                  Get.changeTheme(ThemeData.light());
                  Get.back(); // Navigate back to the SettingsPage
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              elevation: 5,
              child: ListTile(
                title: Text('Dark Theme'),
                onTap: () {
                  Get.changeTheme(ThemeData.dark());
                  Get.back(); // Navigate back to the SettingsPage
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

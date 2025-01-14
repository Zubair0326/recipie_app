import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'theme_selection.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: SafeArea(
        child: ListView(
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              elevation: 5,
              child: ListTile(
                title: Text('Change Theme'),
                onTap: () {
                  Get.to(ThemeSelectionPage());
                },
              ),
            ),
            // Add other settings options here
          ],
        ),
      ),
    );
  }
}

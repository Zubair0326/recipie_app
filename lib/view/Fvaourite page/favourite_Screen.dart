import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'favourite_controller.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.find<FavoriteController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Recipes"),
      ),
      body: Obx(() {
        if (favoriteController.favoriteRecipes.isEmpty) {
          return Center(child: Text("No Favorites Added"));
        }

        return ListView.builder(
          itemCount: favoriteController.favoriteRecipes.length,
          itemBuilder: (context, index) {
            final recipe = favoriteController.favoriteRecipes.values.toList()[index];
            return ListTile(
              leading: Image.asset(recipe['image'], width: 50, height: 50, fit: BoxFit.cover),
              title: Text(recipe['name']),
              subtitle: Text("\$${recipe['price']}"),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  favoriteController.toggleFavorite(recipe['name'], recipe);
                },
              ),
            );
          },
        );
      }),
    );
  }
}

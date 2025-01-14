import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../view/Fvaourite page/favourite_controller.dart';
import '../../view/recipie_list/recipie_controller.dart';


class Bannersection extends StatelessWidget {
  const Bannersection({super.key, required String imageUrl});

  @override
  Widget build(BuildContext context) {
    final RecipeController recipeController = Get.put(RecipeController());
    final FavoriteController favoriteController = Get.put(FavoriteController());

    return Obx(() {
      if (recipeController.recipes.isEmpty) {
        return Container(
          height: 200,
          color: Colors.grey[200],
          child: Center(child: Text("No Recipes Added")),
        );
      }

      return CarouselSlider.builder(
        itemCount: recipeController.recipes.length,
        itemBuilder: (context, index, realIndex) {
          final recipe = recipeController.recipes[index];
          final isFavorite = favoriteController.isFavorite(recipe['name']); // Check if the recipe is a favorite

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 192, 104),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  // Recipe Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      recipe['image'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),

                  // Recipe Details
                  Positioned(
                    bottom: 60,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recipe['name'],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 3,
                                color: Colors.black.withOpacity(0.5),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "\$${recipe['price']}",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 3,
                                color: Colors.black.withOpacity(0.5),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Favorite Icon
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      onPressed: () {
                        favoriteController.toggleFavorite(recipe['name'], recipe);
                        Get.snackbar(
                          isFavorite ? 'Removed from Favorites' : 'Added to Favorites',
                          '${recipe['name']} has been ${isFavorite ? 'removed from' : 'added to'} your favorites.',
                          snackPosition: SnackPosition.BOTTOM,
                          duration: Duration(seconds: 2),
                        );
                      },
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 250,
          enlargeCenterPage: true,
          autoPlay: false,
          viewportFraction: 1.0,
        ),
      );
    });
  }
}

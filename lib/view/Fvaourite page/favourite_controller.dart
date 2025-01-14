import 'package:get/get.dart';

class FavoriteController extends GetxController {
  var favoriteRecipes = <String, Map<String, dynamic>>{}.obs; // RxMap to store recipe details

  bool isFavorite(String recipeName) {
    // Check if the recipe is in the favorites
    return favoriteRecipes.containsKey(recipeName);
  }

  void toggleFavorite(String recipeName, Map<String, dynamic> recipe) {
    // Add or remove recipe from the favorites
    if (isFavorite(recipeName)) {
      favoriteRecipes.remove(recipeName); // Remove from favorites
    } else {
      favoriteRecipes[recipeName] = recipe; // Add to favorites
    }
  }
}

// import 'dart:convert';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:recipie_app/utils/common/recipie_model.dart';


// class RecipeController extends GetxController {
//   var recipes = <Recipe>[].obs;
//   var selectedRecipe = Recipe(name: '', image: '', ingredients: [], servings: '').obs;

//   // Load recipes for a specific category from a JSON file
//   Future<void> loadRecipes(String filePath) async {
//     final jsonString = await rootBundle.loadString(filePath);
//     final List<dynamic> jsonData = jsonDecode(jsonString);
//     recipes.value = jsonData.map((json) => Recipe.fromJson(json)).toList();
//   }

//   // Set the selected recipe and navigate to the detail screen
//   void selectRecipe(Recipe recipe) {
//     selectedRecipe.value = recipe;
//     Get.toNamed('/recipe-detail');
//   }
// }

import 'package:Recify/model/recipie_model.dart';
import 'package:flutter/material.dart';

 // Make sure to import the Recipe model.

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 5,
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Image.asset(recipe.image, width: 80, height: 80, fit: BoxFit.cover),
        title: Text(recipe.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        subtitle: Text('Servings: ${recipe.servings}'),
        onTap: () {
          // Navigate to recipe details page when tapped (optional)
          // Get.to(RecipeDetailPage(recipe: recipe));
        },
      ),
    );
  }
}

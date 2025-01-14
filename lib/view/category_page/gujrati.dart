import 'dart:convert';

import 'package:Recify/model/recipe_card.dart';

import 'package:Recify/model/recipie_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class Gujarati extends StatelessWidget {
  const Gujarati({super.key});

  // Function to load recipes from the JSON file
  Future<List<Recipe>> loadRecipes() async {
    final String response = await rootBundle.loadString('assets/json/gujrati_recipes.json');
    final List<dynamic> data = json.decode(response);
    return data.map((item) => Recipe.fromJson(item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gujarati Recipes'),
      ),
      body: FutureBuilder<List<Recipe>>(
        future: loadRecipes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error loading recipes: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No recipes available.'),
            );
          }

          final recipes = snapshot.data!;
          return ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return RecipeCard(recipe: recipes[index]);

            },
          );
        },
      ),
    );
  }
}

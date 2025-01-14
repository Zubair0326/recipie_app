import 'dart:convert';
import 'package:flutter/services.dart'; // For loading assets
import 'package:flutter/material.dart';
import '../../model/recipie_model.dart';
import '../../model/recipe_card.dart';


class Italian extends StatefulWidget {
  const Italian({super.key});

  @override
  _ItalianState createState() => _ItalianState();
}

class _ItalianState extends State<Italian> {
  late List<Recipe> italianRecipes = [];

  @override
  void initState() {
    super.initState();
    loadRecipes();
  }

  // Function to load recipes from the JSON file
  Future<void> loadRecipes() async {
    final String response = await rootBundle.loadString('assets/json/italian_recipie_detail.json');
    final List<dynamic> data = json.decode(response);
    setState(() {
      italianRecipes = data.map((item) => Recipe.fromJson(item)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Italian Recipes'),
      ),
      body: italianRecipes.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: italianRecipes.length,
              itemBuilder: (context, index) {
                return RecipeCard(recipe: italianRecipes[index]);
              },
            ),
    );
  }
}

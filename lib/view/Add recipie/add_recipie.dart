import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../recipie_list/recipie_controller.dart';

class AddRecipie extends StatelessWidget {
  AddRecipie({super.key});

  final RecipeController recipeController = Get.put(RecipeController());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ingredientsController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Recipe"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Recipe Name"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: ingredientsController,
              decoration: const InputDecoration(
                labelText: "Ingredients (comma-separated)",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: "Price (\$)"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                recipeController.selectImage();
              },
              child: Obx(() {
                final imagePath = recipeController.imagePath.value;
                return Container(
                  height: 150,
                  color: Colors.grey[200],
                  child: imagePath == null
                      ? const Center(child: Text("Tap to add image"))
                      : Image.asset(imagePath, fit: BoxFit.cover),
                );
              }),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    ingredientsController.text.isNotEmpty &&
                    recipeController.imagePath.value != null &&
                    priceController.text.isNotEmpty) {
                  recipeController.addRecipe(
                    nameController.text as Map<String, dynamic>,
                    recipeController.imagePath.value!,
                    ingredientsController.text
                        .split(',')
                        .map((e) => e.trim())
                        .toList(),
                  );

                  Get.snackbar("Success", "Recipe Added Successfully!");
                  nameController.clear();
                  ingredientsController.clear();
                  priceController.clear();
                  recipeController.clearImage();
                } else {
                  Get.snackbar("Error", "Please fill all fields");
                }
              },
              child: const Text("Add Recipe"),
            ),
          ],
        ),
      ),
    );
  }
}

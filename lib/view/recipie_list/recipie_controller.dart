import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RecipeController extends GetxController {
  // Observable list of recipes
  var recipes = <Map<String, dynamic>>[].obs;

  // Observable for selected image path
  Rx<String?> imagePath = Rx<String?>(null);

  // Method to add a recipe (if required)
  void addRecipe(Map<String, dynamic> recipe, String s, List<String> list) {
    recipes.add(recipe);
  }

  // Optional: Fetch recipes from a service or database
  void fetchRecipes() {
    // Simulating data fetching
    recipes.addAll([
      {'name': 'Butter Chicken', 'price': 12.99, 'image': 'assets/images/butter_chicken.jpg'},
      {'name': 'Paneer Tikka', 'price': 10.99, 'image': 'assets/images/paneer_tikka.jpg'},
    ]);
  }

  // New Method: Select an image
  Future<void> selectImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imagePath.value = pickedFile.path; // Save the image path
    } else {
      Get.snackbar("Error", "No image selected");
    }
  }

  // New Method: Clear the selected image
  void clearImage() {
    imagePath.value = null;
  }
}

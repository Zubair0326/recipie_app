class Recipe {
  final String name;
  final String image;
  final String ingredients;
  final String servings;

  Recipe({
    required this.name,
    required this.image,
    required this.ingredients,
    required this.servings,
  });

  // Factory method to create a Recipe from JSON data
  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'],
      image: json['image'],
      ingredients: json['ingredients'],
      servings: json['servings'],
    );
  }
}

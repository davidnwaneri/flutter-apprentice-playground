class Recipe {
  final String name;
  final String imageUrl;
  final List<Ingredient> ingredients;
  final int servings; // the number of people the specified quantity of ingredients will feed
  const Recipe({
    required this.name,
    required this.imageUrl,
    required this.ingredients,
    required this.servings,
  });
}

class Ingredient {
  final String name;
  final String unitOfMeasurement;
  final double quantity;
  const Ingredient({
    required this.name,
    required this.unitOfMeasurement,
    required this.quantity,
  });
}

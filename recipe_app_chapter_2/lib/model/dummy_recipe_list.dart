import 'package:recipe_app_chapter_2/model/recipe.dart';

class DummRecipeList {
  const DummRecipeList();

  static const List<Recipe> recipes = [
    Recipe(
      name: 'Spaghetti and Meatballs',
      imageUrl: 'assets/image_1.jpg',
      servings: 4,
      ingredients: [
        Ingredient(
          quantity: 1,
          unitOfMeasurement: 'box',
          name: 'Spaghetti',
        ),
        Ingredient(
          quantity: 4,
          unitOfMeasurement: '',
          name: 'Frozen Meatballs',
        ),
        Ingredient(
          quantity: 0.5,
          unitOfMeasurement: 'jar',
          name: 'sauce',
        ),
      ],
    ),
    Recipe(
      name: 'Tomato Soup',
      imageUrl: 'assets/image_2.png',
      servings: 2,
      ingredients: [
        Ingredient(
          quantity: 1,
          unitOfMeasurement: 'can',
          name: 'Tomato Soup',
        ),
      ],
    ),
    Recipe(
      name: 'Grilled Cheese',
      imageUrl: 'assets/image_3.jpg',
      servings: 1,
      ingredients: [
        Ingredient(
          quantity: 2,
          unitOfMeasurement: 'slices',
          name: 'Cheese',
        ),
        Ingredient(
          quantity: 2,
          unitOfMeasurement: 'slices',
          name: 'Bread',
        ),
      ],
    ),
    Recipe(
      name: 'Chocolate Chip Cookies',
      imageUrl: 'assets/image_6.jpg',
      servings: 24,
      ingredients: [
        Ingredient(
          quantity: 4,
          unitOfMeasurement: 'cups',
          name: 'flour',
        ),
        Ingredient(
          quantity: 2,
          unitOfMeasurement: 'cups',
          name: 'sugar',
        ),
        Ingredient(
          quantity: 0.5,
          unitOfMeasurement: 'cups',
          name: 'chocolate chips',
        ),
      ],
    ),
    Recipe(
      name: 'Taco Salad',
      imageUrl: 'assets/image_4.png',
      servings: 1,
      ingredients: [
        Ingredient(
          quantity: 4,
          unitOfMeasurement: 'oz',
          name: 'nachos',
        ),
        Ingredient(
          quantity: 3,
          unitOfMeasurement: 'oz',
          name: 'taco meat',
        ),
        Ingredient(
          quantity: 0.5,
          unitOfMeasurement: 'cup',
          name: 'cheese',
        ),
        Ingredient(
          quantity: 0.25,
          unitOfMeasurement: 'cup',
          name: 'chopped tomatoes',
        ),
      ],
    ),
    Recipe(
      name: 'Hawaiian Pizza',
      imageUrl: 'assets/image_5.jpg',
      servings: 4,
      ingredients: [
        Ingredient(
          quantity: 1,
          unitOfMeasurement: 'item',
          name: 'pizza',
        ),
        Ingredient(
          quantity: 1,
          unitOfMeasurement: 'cup',
          name: 'pineapple',
        ),
        Ingredient(
          quantity: 8,
          unitOfMeasurement: 'oz',
          name: 'ham',
        ),
      ],
    ),
  ];
}

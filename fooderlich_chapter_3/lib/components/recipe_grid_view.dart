import 'package:flutter/material.dart';
import 'package:fooderlich_chapter_3/components/recipe_thumbnail.dart';
import 'package:fooderlich_chapter_3/models/simple_recipe.dart';

class RecipeGridView extends StatelessWidget {
  const RecipeGridView({Key? key, required this.recipes}) : super(key: key);
  final List<SimpleRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: GridView.builder(
        itemCount: recipes.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return RecipeThumbnail(recipe: recipe);
        },
      ),
    );
  }
}

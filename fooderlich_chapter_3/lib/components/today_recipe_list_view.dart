import 'package:flutter/material.dart';
import 'package:fooderlich_chapter_3/models/explore_recipe.dart';
import 'package:fooderlich_chapter_3/theme.dart';

import '../view/cards/cards.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({Key? key, required this.recipes}) : super(key: key);
  final List<ExploreRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recipes of the Day 🍳', style: FooderlichTheme.darkTextTheme.headline6),
          const SizedBox(height: 16),
          SizedBox(
            height: 400,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                if (recipe.cardType == RecipeCardType.card1) {
                  return Card1(
                    recipe: recipe,
                  );
                } else if (recipe.cardType == RecipeCardType.card2) {
                  return Card2(
                    recipe: recipe,
                  );
                } else if (recipe.cardType == RecipeCardType.card3) {
                  return Card3(
                    recipe: recipe,
                  );
                } else {
                  throw Exception('Card type not implemented');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooderlich_chapter_3/models/explore_recipe.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key, required this.recipe});

  final ExploreRecipe recipe;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:  DecorationImage(image: AssetImage(recipe.backgroundImage), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Text(recipe.title, style: Theme.of(context).textTheme.bodyText1),
            Positioned(
              top: 20,
              child: Text(recipe.subtitle, style: Theme.of(context).textTheme.headline5),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(recipe.message, style: Theme.of(context).textTheme.bodyText1),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(recipe.authorName, style: Theme.of(context).textTheme.bodyText1),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooderlich_chapter_3/models/explore_recipe.dart';
import 'package:fooderlich_chapter_3/theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key, required this.recipe});
  final ExploreRecipe recipe;
  List<Widget> createChips() {
    final List<Widget> chips = [];
    recipe.tags.take(6).forEach((element) {
      final chip = Chip(
        label: Text(
          element,
          style: FooderlichTheme.darkTextTheme.bodyText1,
        ),
        backgroundColor: Colors.black.withOpacity(0.7),
      );
      chips.add(chip);
    });
    return chips;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(recipe.backgroundImage), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.book, color: Colors.white, size: 40),
                  const SizedBox(height: 8),
                  Text(recipe.title, style: FooderlichTheme.darkTextTheme.headline2),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.up,
                runSpacing: 10,
                spacing: 12,
                children: createChips(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

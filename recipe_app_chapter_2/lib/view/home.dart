import 'package:flutter/material.dart';
import 'package:recipe_app_chapter_2/model/dummy_recipe_list.dart';
import 'package:recipe_app_chapter_2/model/recipe.dart';
import 'package:recipe_app_chapter_2/view/recipe_details_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Widget _buildRecipeList(Recipe recipe) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(recipe.imageUrl),
            const SizedBox(height: 14),
            Text(
              recipe.name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: DummRecipeList.recipes.length,
          itemBuilder: (context, index) {
            final recipe = DummRecipeList.recipes[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetails(recipe: recipe),
                  ),
                );
              },
              child: _buildRecipeList(recipe),
            );
          },
        ),
      ),
    );
  }
}

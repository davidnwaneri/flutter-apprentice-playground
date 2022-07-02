import 'package:flutter/material.dart';
import 'package:recipe_app_chapter_2/model/recipe.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);
  final Recipe recipe;

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.name),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.asset(widget.recipe.imageUrl),
            ),
            const SizedBox(height: 14),
            Text(
              widget.recipe.name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                    '''${ingredient.quantity * sliderValue}'''
                    ''' ${ingredient.unitOfMeasurement}'''
                    ''' ${ingredient.name}''',
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              value: sliderValue.toDouble(),
              label: '${sliderValue * widget.recipe.servings} servings',
              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue.toInt();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

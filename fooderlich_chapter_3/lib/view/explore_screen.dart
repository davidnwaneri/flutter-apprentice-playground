import 'package:flutter/material.dart';
import 'package:fooderlich_chapter_3/api/mock_fooderlich_service.dart';
import 'package:fooderlich_chapter_3/models/explore_data.dart';
import '../components/components.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final fooderlichService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fooderlichService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final todayRecipe = snapshot.data?.todayRecipes;
          return ListView(
            children: [
              TodayRecipeListView(recipes: todayRecipe ?? []),
              const SizedBox(height: 8),
              Container(height: 400, color: Colors.green),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

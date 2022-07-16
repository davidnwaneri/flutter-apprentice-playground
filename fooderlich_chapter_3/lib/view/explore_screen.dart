import 'package:flutter/material.dart';
import 'package:fooderlich_chapter_3/api/mock_fooderlich_service.dart';
import 'package:fooderlich_chapter_3/models/explore_data.dart';
import '../components/components.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late final MockFooderlichService fooderlichService;
  late final ScrollController scrollController;

  @override
  void initState() {
    fooderlichService = MockFooderlichService();
    void _onScroll() {
      if (scrollController.offset >= scrollController.position.maxScrollExtent) {
        print('I am at the bottom');
      } else if (scrollController.offset <= scrollController.position.minScrollExtent) {
        print('I am at the top');
      }
    }
    scrollController = ScrollController()..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fooderlichService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final todayRecipe = snapshot.data?.todayRecipes;
          final friendPosts = snapshot.data?.friendPosts;
          return ListView(
            controller: scrollController,
            children: [
              TodayRecipeListView(recipes: todayRecipe ?? []),
              const SizedBox(height: 8),
              FriendPostListView(friendPosts: friendPosts ?? []),
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

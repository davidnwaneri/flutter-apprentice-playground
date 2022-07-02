import 'package:flutter/material.dart';
import 'package:fooderlich_chapter_3/models/explore_recipe.dart';
import 'package:fooderlich_chapter_3/theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key, required this.recipe});

  final ExploreRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(recipe.backgroundImage), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            AuthorCard(name: recipe.authorName, title: recipe.role, imageProvider: AssetImage(recipe.profileImage)),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(recipe.subtitle, style: FooderlichTheme.lightTextTheme.headline1),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(recipe.title, style: FooderlichTheme.lightTextTheme.headline1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    Key? key,
    required this.name,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  final String name;
  final String title;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(imageProvider: imageProvider),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: FooderlichTheme.lightTextTheme.headline2),
                  Text(title, style: FooderlichTheme.lightTextTheme.headline3),
                ],
              ),
            ],
          ),
          const FavouriteButton(),
        ],
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({
    Key? key,
  }) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool _isFavourite = false;

  void _toggleFavourite() {
    setState(() {
      _isFavourite = !_isFavourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _toggleFavourite,
      iconSize: 30,
      color: Colors.red,
      icon: Icon(_isFavourite ? Icons.favorite : Icons.favorite_border),
    );
  }
}

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key, this.radius = 28, required this.imageProvider}) : super(key: key);

  final double radius;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: radius,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: radius - 4,
        backgroundImage: imageProvider,
      ),
    );
  }
}

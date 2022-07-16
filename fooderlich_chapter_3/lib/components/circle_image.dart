import 'package:flutter/material.dart';

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

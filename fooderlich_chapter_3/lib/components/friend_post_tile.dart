
import 'package:flutter/material.dart';
import 'package:fooderlich_chapter_3/components/circle_image.dart';
import 'package:fooderlich_chapter_3/models/models.dart';

class FriendPostTile extends StatelessWidget {
  const FriendPostTile({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(imageProvider: AssetImage(post.profileImageUrl), radius: 20,),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment),
              Text(
                 '${post.timestamp} mins ago',
                  style: const TextStyle(fontWeight: FontWeight.w700),),
            ],
          ),
        ),
      ],
    );
  }
}

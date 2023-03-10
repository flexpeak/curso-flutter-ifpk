import 'package:flutter/material.dart';
import 'package:flutter_application_002/frases.dart';
import 'package:flutter_application_002/post.dart';

class Posts extends StatelessWidget {
  Posts({super.key});

  final List posts = Frases.frases;

  @override
  Widget build(BuildContext context) {
    posts.shuffle();

    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Post(postInfo: posts[index], index: index);
          },
        )
      ],
    );
  }
}

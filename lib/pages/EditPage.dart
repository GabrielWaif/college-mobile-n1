import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/lib/colors.dart';
import 'package:reddit_clone/pages/HomePage.dart';
import 'package:reddit_clone/repositories/posts_repository.dart';

import '../models/post.dart';

class EditPostPage extends StatefulWidget {
  final PostModel post;

  const EditPostPage({super.key, required this.post});

  @override
  _EditPostPageState createState() => _EditPostPageState();
}

class _EditPostPageState extends State<EditPostPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController postTitleController = TextEditingController(text: widget.post.title);

    final TextEditingController postDescriptionController =
        TextEditingController(text: widget.post.description);

    final TextEditingController postImageUrlController =
        TextEditingController(text: widget.post.imageUrl);

    final TextEditingController postSubredditController =
        TextEditingController(text: widget.post.subreddit);

    Future editPost() async {
      final String title = postTitleController.text;
      final String description = postDescriptionController.text;
      final String imageUrl = postImageUrlController.text;
      final String subreddit = postSubredditController.text;

      final post = PostModel(
          title: title,
          description: description,
          imageUrl: imageUrl,
          timeAgo: Timestamp.now(),
          comments: "0",
          upVotes: "0",
          subreddit: subreddit);

      Provider.of<PostsRepositor>(context, listen: false).updatePost(widget.post.id, post);

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyHomePage()));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Post'),
        backgroundColor: orangeColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 40, right: 16),
        child: Column(
          children: <Widget>[
            TextField(
              controller: postTitleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: postDescriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: postImageUrlController,
              decoration: const InputDecoration(labelText: 'ImageURL'),
            ),
            TextField(
              controller: postSubredditController,
              decoration: const InputDecoration(labelText: 'Subreddit'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return orangeColor;
                  }
                  return orangeColor;
                }),
              ),
              onPressed: editPost,
              child: const Text('Confirm Edit'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/lib/colors.dart';
import 'package:reddit_clone/pages/HomePage.dart';
import 'package:reddit_clone/repositories/posts_repository.dart';

import '../models/post.dart';

class NewPostPage extends StatefulWidget {
  @override
  _NewPostPageState createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  final TextEditingController postTitleController = TextEditingController();
  final TextEditingController postDescriptionController =
      TextEditingController();
  final TextEditingController postImageUrlController = TextEditingController();
  final TextEditingController postSubredditController = TextEditingController();

  Future createPost() async {
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

    Provider.of<PostsRepositor>(context, listen: false).createPost(post);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
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
              decoration: const InputDecoration(labelText: 'Image'),
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
              onPressed: createPost,
              child: const Text('Create Post'),
            ),
          ],
        ),
      ),
    );
  }
}

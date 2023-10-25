import 'package:flutter/material.dart';
import 'package:reddit_clone/lib/colors.dart';
import 'package:reddit_clone/models/post.dart';
import 'package:reddit_clone/pages/PostPage.dart';

class Post extends StatelessWidget {
  final PostModel post;

  const Post({
    super.key,
    required this.username,
    required this.subreddit,
    required this.iconURL,
    required this.upVotes,
    required this.comments,
    required this.timeAgo,
    this.isLiked = false,
    this.isFirst = false,
    required this.post
  });

  final String username;
  final String subreddit;
  final String iconURL;
  final String timeAgo;
  final String upVotes;
  final String comments;
  final bool isLiked;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PostPage(post: post)));
        },
        child: Container(
          padding: const EdgeInsets.all(30),
          margin:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          decoration: const BoxDecoration(
              color: Color.fromARGB(254, 254, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular((20)))),
          child: Column(
            children: [
              () {
                if (isFirst) {
                  return const Row(children: [
                    Text(
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                      'Trending',
                    ),
                    Icon(
                      Icons.chevron_right,
                    )
                  ]);
                } else {
                  return const Row();
                }
              }(),
              () {
                if (isFirst) {
                  return const Divider(
                    color: Color.fromARGB(245, 244, 245, 255),
                  );
                } else {
                  return const Row();
                }
              }(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 15),
                            child: CircleAvatar(
                              foregroundImage: NetworkImage(iconURL),
                            ),
                          ),
                          Text(
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                              "r/$subreddit")
                        ],
                      ),
                      const Icon(Icons.more_vert),
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                          post.title)),
                  () {
                    if (post.imageUrl != "") {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: ClipRect(
                              // borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(post.imageUrl ?? "")),
                        ),
                      );
                    } else {
                      return const Row();
                    }
                  }(),
                  () {
                    if (true) {
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 30, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              style: const TextStyle(
                                  color: lightGreyColor, fontSize: 15),
                              "by r/$username * $timeAgo",
                            ),
                          ));
                    }
                  }(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                  color: isLiked ? orangeColor : greyColor,
                                  Icons.arrow_upward)),
                          Text("$upVotes K",
                              style: TextStyle(
                                  color: isLiked ? orangeColor : greyColor,
                                  fontSize: 15)),
                        ],
                      ),
                      const Icon(color: greyColor, Icons.arrow_downward),
                      Row(
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                  color: greyColor, Icons.chat_bubble_outline)),
                          Text(
                              style: const TextStyle(
                                  color: greyColor, fontSize: 15),
                              "$comments K"),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 10),
                              child:
                                  Icon(color: greyColor, Icons.share_outlined)),
                          Text(
                              style: TextStyle(color: greyColor, fontSize: 15),
                              "Share"),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}

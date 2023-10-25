import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  String id;
  final String title;
  final String description;
  final String? imageUrl;
  final String subreddit;
  final Timestamp timeAgo;
  final String upVotes;
  final String comments;

  PostModel({
    this.id = "",
    required this.title,
    required this.description,
    required this.subreddit,
    required this.upVotes,
    required this.comments,
    required this.timeAgo,
    this.imageUrl,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'imageUrl': imageUrl,
        'subreddit': subreddit,
        'timeAgo': timeAgo,
        'upVotes': upVotes,
        'comments': comments,
      };
}

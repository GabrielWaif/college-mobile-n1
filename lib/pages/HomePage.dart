import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/components/post.dart';
import 'package:reddit_clone/lib/colors.dart';
import 'package:reddit_clone/models/post.dart';
import 'package:reddit_clone/pages/ProfilePage.dart';
import 'package:reddit_clone/repositories/posts_repository.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Future createPost() async {
      final post = PostModel(
          title: "new title",
          description: "new description",
          imageUrl: "com.br");

      Provider.of<PostsRepositor>(context, listen: false).createPost(post);
    }

    return Scaffold(
      body: ListView(
        children: const [
          Post(
            timeAgo: "7h",
            comments: "3,0",
            upVotes: "28,2",
            text:
                "What's something you've gotten away with as a kid because \"they're young and don't know what they're doing!\" when really you knew exactly what you were going?",
            iconURL:
                "https://freelogopng.com/images/all_img/1658834095reddit-logo-png.png",
            subreddit: "AskReddit",
            username: "coachieforbreakfast",
            isFirst: true,
          ),
          Post(
            timeAgo: "16h",
            comments: "2,4",
            upVotes: "1,2",
            text: "Navigation the New Normal.",
            iconURL:
                "https://static9.depositphotos.com/1550494/1195/i/450/depositphotos_11950254-Urban-asian-man-with-red-sunglasses-and-skateboard-sitting-on-stairs.-Good-looking.-Cool-guy.-Wearing-grey-shirt-and-jeans.-Old-neglected-building-in-the-background..jpg",
            imageURL:
                "https://images.indianexpress.com/2021/07/Opinion-3-8.jpg?w=640",
            subreddit: "Coronavirus",
            username: "internetPositif",
            isFirst: false,
            isLiked: true,
          ),
          Post(
            timeAgo: "1h",
            comments: "2,0",
            upVotes: "1,0",
            text: "Author plans to write another 12 books.",
            iconURL:
                "https://s26162.pcdn.co/wp-content/uploads/2022/05/Books.jpeg",
            subreddit: "books",
            username: "bookReader",
            isFirst: false,
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20),
        child: InkWell(
          onTap: () async {
            await createPost();
          },
          child: Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: orangeColor,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(color: orangeColor, Icons.home_outlined),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(color: lightGreyColor, Icons.language),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(color: lightGreyColor, Icons.maps_ugc_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                icon: const Icon(color: lightGreyColor, Icons.inbox)),
            label: '',
          )
        ],
      ),
    );
  }
}

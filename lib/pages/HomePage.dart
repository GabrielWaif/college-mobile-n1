import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/components/post.dart';
import 'package:reddit_clone/lib/colors.dart';
import 'package:reddit_clone/models/post.dart';
import 'package:reddit_clone/pages/ProfilePage.dart';
import 'package:reddit_clone/pages/RegisterPage.dart';
import 'package:reddit_clone/repositories/posts_repository.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    @override
    void initState() {
      super.initState();
      Provider.of<PostsRepositor>(context, listen: false).getAll();
    }

    var postsRepository = Provider.of<PostsRepositor>(context);

    return Scaffold(
      body: StreamBuilder<List<PostModel>>(
          stream: postsRepository.getStream(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Erro: ${snapshot.error}"),
              );
            } else {
              List<PostModel>? posts = snapshot.data;
              return ListView.builder(
                itemCount: posts?.length,
                itemBuilder: (context, index) {
                  return Post(
                    iconURL:
                        "https://freelogopng.com/images/all_img/1658834095reddit-logo-png.png",
                    username: "coachieforbreakfast",
                    isFirst: index == 0,
                    post: posts![index],
                  );
                },
              );
            }
          }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20),
        child: InkWell(
          onTap: () async {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NewPostPage()));
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

import 'package:flutter/material.dart';

const greyColor = Color.fromARGB(255, 97, 97, 96);
const lightGreyColor = Color.fromARGB(255, 152, 153, 152);
const orangeColor = Color.fromARGB(255, 255, 68, 1);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit Clone N1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: orangeColor,
            background: const Color.fromARGB(249, 249, 250, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
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
          onTap: () {
            // handle button press
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(color: orangeColor, Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(color: lightGreyColor, Icons.language),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(color: lightGreyColor, Icons.maps_ugc_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(color: lightGreyColor, Icons.inbox),
            label: '',
          )
        ],
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.username,
    required this.subreddit,
    required this.iconURL,
    required this.text,
    required this.upVotes,
    required this.comments,
    required this.timeAgo,
    this.imageURL = "",
    this.isLiked = false,
    this.isFirst = false,
  });

  final String username;
  final String subreddit;
  final String iconURL;
  final String text;
  final String imageURL;
  final String timeAgo;
  final String upVotes;
  final String comments;
  final bool isLiked;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      decoration: const BoxDecoration(
          color: Color.fromARGB(254, 254, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular((20)))),
      child: Column(
        children: [
          () {
            if (isFirst) {
              return const Row(children: [
                Text(
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
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
                        padding: const EdgeInsets.only(right: 20, bottom: 15),
                        child: CircleAvatar(
                          foregroundImage: NetworkImage(iconURL),
                        ),
                      ),
                      Text(
                          style: const TextStyle(fontWeight: FontWeight.w500),
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
                      text)),
              () {
                if (imageURL != "") {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: ClipRect(
                          // borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(imageURL)),
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
                          style:
                              const TextStyle(color: greyColor, fontSize: 15),
                          "$comments K"),
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(color: greyColor, Icons.share_outlined)),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:reddit_clone/lib/colors.dart';

import '../components/post.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Post(
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
          Container(
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 10),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(254, 254, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular((20)))),
              child: Column(children: [
                const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(children: [
                      Text(
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 22),
                        'Best Comments',
                      ),
                      Icon(
                        Icons.expand_more,
                      )
                    ])),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              foregroundImage: NetworkImage(
                                  "https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_760/MTc0OTkxNTQ3NzExNzYwMzUy/top-10-most-beautiful-kpop-female-idols.webp"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                    style: TextStyle(
                                        color: lightGreyColor,
                                        fontWeight: FontWeight.w500),
                                    "HelloWorld404"),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SizedBox(
                                  width: 300,
                                  child: Container(
                                      child: Text(
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                          "What is new normal? it's absolutelyy abnormal!")),
                                ),
                              )
                            ],
                          ),
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ]),
                Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 30),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                            style: TextStyle(color: orangeColor), "Reply"))),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              foregroundImage: NetworkImage(
                                  "https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_760/MTc0NDY4MzM0Nzk0OTA5MzE4/top-10-most-beautiful-kpop-female-idols.webp"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                    style: TextStyle(
                                        color: lightGreyColor,
                                        fontWeight: FontWeight.w500),
                                    "MedalOfHunter4"),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                    "Why do I get a feeling the \"New Normal\"."),
                              ),
                            ],
                          ),
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ]),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                            style: TextStyle(color: orangeColor), "Reply")))
              ]))
        ],
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(
                                "https://static9.depositphotos.com/1550494/1195/i/450/depositphotos_11950254-Urban-asian-man-with-red-sunglasses-and-skateboard-sitting-on-stairs.-Good-looking.-Cool-guy.-Wearing-grey-shirt-and-jeans.-Old-neglected-building-in-the-background..jpg"),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                      "r/subreddit"),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      style: TextStyle(color: lightGreyColor),
                                      "by u/internetPositif * 16h * i.redd.it"),
                                ),
                              ],
                            )),
                      ],
                    ),
                    OutlinedButton(onPressed: () {}, child: const Text("JOIN"))
                  ]),
            )),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: Flex(
          direction: Axis.horizontal,
            children: [
              const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a comment...',
                ),
              )),
              Container(
                width: 65,
                height: 65,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular((10))),
                  color: orangeColor,
                ),
                child: const Icon(
                  Icons.send_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reddit_clone/lib/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: orangeColor,
        body: const Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          foregroundImage: NetworkImage(
                              "https://static9.depositphotos.com/1550494/1195/i/450/depositphotos_11950254-Urban-asian-man-with-red-sunglasses-and-skateboard-sitting-on-stairs.-Good-looking.-Cool-guy.-Wearing-grey-shirt-and-jeans.-Old-neglected-building-in-the-background..jpg"),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                                "u/figmaUser21"),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                                style: TextStyle(color: Colors.white),
                                "* online"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(color: Colors.white, Icons.ac_unit),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                    style: TextStyle(color: Colors.white), "1"),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                    style: TextStyle(color: Colors.white),
                                    "Karma"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(color: Colors.white, Icons.table_rows),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                  style: TextStyle(color: Colors.white), "0d"),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                  style: TextStyle(color: Colors.white),
                                  "Reddit age"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child:
                                Icon(color: Colors.white, Icons.person_outline),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                                style: TextStyle(color: Colors.white),
                                "My Profile"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(color: Colors.white, Icons.dataset),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                                style: TextStyle(color: Colors.white),
                                "Reddit Coins"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                                color: Colors.white,
                                Icons.workspace_premium_outlined),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                                style: TextStyle(color: Colors.white),
                                "Reddit Primium"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                                color: Colors.white, Icons.bookmark_outline),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                                style: TextStyle(color: Colors.white), "Saved"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                                color: Colors.white, Icons.schedule_outlined),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                                style: TextStyle(color: Colors.white),
                                "History"),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
        bottomNavigationBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            padding: const EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                        ),
                        child: Icon(
                          color: Colors.white,
                          Icons.settings_outlined,
                        )),
                    const Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                            style: TextStyle(color: Colors.white), "Settings")),
                    const Padding(
                        padding: EdgeInsets.only(right: 40),
                        child:
                            Text(style: TextStyle(color: lightGreyColor), "|")),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: () async {
                            await FirebaseAuth.instance.signOut();
                        },
                        child: const Text('Log out'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

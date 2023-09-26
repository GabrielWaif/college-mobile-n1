import 'package:flutter/material.dart';

const greyColor = Color.fromARGB(255, 97, 97, 96);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
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
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
            decoration: const BoxDecoration(
                color: Color.fromARGB(254, 254, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular((20)))),
            child: Column(
              children: [
                const Row(children: [
                  Text(
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                    'Trending',
                  ),
                  Icon(
                    Icons.chevron_right,
                  )
                ]),
                const Divider(
                  color: Color.fromARGB(245, 244, 245, 255),
                ),
                Column(
                  children: [
                    const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: CircleAvatar(
                                foregroundImage: NetworkImage(
                                    "https://freelogopng.com/images/all_img/1658834095reddit-logo-png.png"),
                              ),
                            ),
                            Text("r/AskReddit")
                          ],
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    const Text(
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                        "dlsfjlsdjfksj jsldfj skldjfl kjsdlkf jsldkfjlsdjlfkjsdjkflksdjflsdjlfjsljfsdfljsldfjlsjdf lsjlfjs"),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(
                            "https://miro.medium.com/v2/resize:fit:640/format:webp/0*3wWQsMvkaFTc0JMG.png"),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            style: TextStyle(
                                color: Color.fromARGB(255, 152, 153, 152),
                                fontSize: 15),
                            "by r/cochieforbreakfast * 7h",
                          ),
                        )),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child:
                                    Icon(color: greyColor, Icons.arrow_upward)),
                            Text("28,2K",
                                style:
                                    TextStyle(color: greyColor, fontSize: 15)),
                          ],
                        ),
                        Icon(color: greyColor, Icons.arrow_downward),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                    color: greyColor,
                                    Icons.chat_bubble_outline)),
                            Text(
                                style:
                                    TextStyle(color: greyColor, fontSize: 15),
                                "3,0K"),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                    color: greyColor, Icons.share_outlined)),
                            Text(
                                style:
                                    TextStyle(color: greyColor, fontSize: 15),
                                "Share"),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
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
              color: Colors.deepOrange,
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
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.maps_ugc_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: '',
          )
        ],
      ),
    );
  }
}

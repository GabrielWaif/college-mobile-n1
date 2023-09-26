import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 70, left: 40, right: 40),
            child: Column(
              children: [
                Row(children: [
                  Text(
                    'Trending',
                  ),
                  Icon(Icons.chevron_right),
                ]),
                Divider(),
                // A Post Container here
                Column(
                  children: [
                    CircleAvatar(),
                    Row(
                      children: [Text("r/AskReddit")],
                    ),
                    Text(
                        "dlsfjlsdjfksj jsldfj skldjfl kjsdlkf jsldkfjlsdjlfkjsdjkflksdjflsdjlfjsljfsdfljsldfjlsjdf lsjlfjs"),
                    Text("by r/cochieforbreakfast * 7h"),
                    Row(
                      children: [
                        Row(
                          children: [Icon(Icons.arrow_upward), Text("28,2K")],
                        ),
                        Icon(Icons.arrow_downward),
                        Icon(Icons.chat_bubble_outline),
                        Icon(Icons.share_outlined)
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

class HomePost extends StatelessWidget {
  const HomePost({
    super.key,
    required String username,
    required String text,
    required String subreddit,
    required String hoursAgo,
    required String likes,
    required String comments,
  }) ;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(),
        Row(
          children: [Text("subreddit")],
        ),
        Text(
            "dlsfjlsdjfksj jsldfj skldjfl kjsdlkf jsldkfjlsdjlfkjsdjkflksdjflsdjlfjsljfsdfljsldfjlsjdf lsjlfjs"),
        Text("by r/cochieforbreakfast * 7h"),
        Row(
          children: [
            Row(
              children: [Icon(Icons.arrow_upward), Text("28,2K")],
            ),
            Icon(Icons.arrow_downward),
            Icon(Icons.chat_bubble_outline),
            Icon(Icons.share_outlined)
          ],
        )
      ],
    );
  }
}

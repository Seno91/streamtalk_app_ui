import 'package:flutter/material.dart';
import 'package:streamtalk_app_ui/feed_screen.dart';
import 'package:streamtalk_app_ui/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      FeedScreen(stories: _stories, posts: _posts),
      const ProfileScreen(),
      const Center(
        child: Text(
          "Message Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      const Center(
        child: Text("Recommendation Page"),
      ),
    ];
  }

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  late List<Widget> _pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan[100],
        fixedColor: const Color.fromARGB(255, 247, 90, 129),
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.recommend), label: 'Recomms')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.cyan[50],
        title: const Text(
          "Streamtalk",
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

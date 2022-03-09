import 'package:flutter/material.dart';
import 'technology.dart';
import 'science.dart';
import 'health.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    const Technology(),
    const Science(),
    const Health(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
          title: const Text.rich(TextSpan(children: [
            TextSpan(
                text: 'News',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange)),
            TextSpan(
              text: 'App',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ]))),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'Technology', icon: Icon(Icons.computer)),
          BottomNavigationBarItem(label: 'Science', icon: Icon(Icons.science)),
          BottomNavigationBarItem(
              label: 'Health', icon: Icon(Icons.health_and_safety)),
        ],
      ),
    );
  }
}

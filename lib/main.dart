import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter To-do App',
      home: NavigatorWidget(),
    );
  }
}
class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({Key? key}) : super(key: key);

  @override
  _NavigatorWidgetState createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  int currentIndex = 0;
  final screens = [
    const Center(
      child: Text(
        'Users List',
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        'Profile',
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        'Logout',
        style: TextStyle(fontSize: 60),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do App'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 40,
        onTap: (valueOnMy) => setState(() => currentIndex = valueOnMy),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Users List',
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.today_outlined),
              label: 'Profile',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Logout',
          )
        ],
      ),
    );
  }
}




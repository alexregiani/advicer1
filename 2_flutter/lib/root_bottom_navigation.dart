import 'package:flutter/material.dart';
import 'package:flutterbasics/presentation/counter/conter_screen.dart';
import 'package:flutterbasics/presentation/list/list_screen.dart';
import 'package:flutterbasics/presentation/widget_examples/widget_examples_screen.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({Key? key}) : super(key: key);

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex, 
        children: const [
          WidgetExampleScreen(),
          CounterScreen(),
          ListScreen(),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'examples'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'counter'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
          ]),
    );
  }
}
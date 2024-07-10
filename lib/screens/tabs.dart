import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Title...'),
      ),
      // body: ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
          ),
        ],
      ),
    );
  }
}
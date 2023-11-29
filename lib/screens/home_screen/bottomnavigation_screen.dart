import 'package:bit_graph/screens/home_screen/dialytask_screen.dart';
import 'package:bit_graph/screens/settings_screen/settings_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  List navigation = [
    const DialyTask(),
    const DialyTask(),
    const DialyTask(),
    const Settings(),
  ];

  void onItemTapped(int num) {
    if (num >= 0 && num < navigation.length) {
      setState(() {
        index = num;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff91BAD6),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: navigation[index],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_filled,
                  // color: Color(0xff91BAD6),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chat,
                  // color: Color(0xff91BAD6),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.forward_to_inbox,
                  // color: Color(0xff91BAD6),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  // color: Color(0xff91BAD6),
                ))
          ],
        ),
      ),
    );
  }
}

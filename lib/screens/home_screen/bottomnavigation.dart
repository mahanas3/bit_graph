import 'package:bit_graph/screens/home_screen/dialytask_screen.dart';
import 'package:bit_graph/screens/settings_screen/settings_screens.dart';
import 'package:bit_graph/utilities/dimensions.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  List navigation = [
    const DialyTask(),
    const DialyTask(),
    const DialyTask(),
    const Settings(),
  ];

  void ontabtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff73A5C6),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: navigation[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        height: Dimensions.heightCalc(context, 65),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xff73A5C6),
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                // pageController.jumpToPage(index);
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mark_unread_chat_alt_sharp),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.email),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(
        Icons.home_filled,
        size: 30,
      ),
      const Icon(
        Icons.chat,
        size: 30,
      ),
      const Icon(
        Icons.messenger,
        size: 30,
      ),
      const Icon(
        Icons.settings,
        size: 30,
      )
    ];

    int index = 1;

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: [items[index]],
        index: index,
        onTap: (selectedIndex){

        },
      ),
    );
  }
}

import 'package:bit_graph/utilities/dimensions.dart';
import 'package:flutter/material.dart';

class DialyTask extends StatefulWidget {
  const DialyTask({super.key});

  @override
  State<DialyTask> createState() => _DialyTaskState();
}

class _DialyTaskState extends State<DialyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Row(
              children: [
                Container(
                  height: Dimensions.heightCalc(context, 55),
                  width: Dimensions.widthCalc(context, 55),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIWNTiq9IDokwKAKD68rWcfvb_790X2MOxIA&usqp=CAU'))),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 230),
                ),
                Icon(
                  Icons.search,
                  color: Colors.black87,
                  size: Dimensions.heightCalc(context, 35),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 260, top: 20),
            child: Text(
              'Hello',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 18),
                  color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 175, top: 10),
            child: Text(
              'Alex Marconi',
              style: TextStyle(fontSize: Dimensions.heightCalc(context, 22)),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(color: Colors.red),
              );
            },
          )
        ],
      ),
    );
  }
}

import 'package:bit_graph/screens/list_screen/all_screen.dart';
import 'package:bit_graph/screens/list_screen/completed_screen.dart';
import 'package:bit_graph/screens/list_screen/ongoing_screen.dart';
import 'package:flutter/material.dart';
import '../../utilities/dimensions.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
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
              color: Colors.grey,
              size: Dimensions.heightCalc(context, 35),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 240, top: 25),
        child: Text(
          'Project',
          style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: Dimensions.heightCalc(context, 20)),
        ),
      ),
      SizedBox(
        height: Dimensions.heightCalc(context, 20),
      ),
      DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xff73A5C6),
            ),
            controller: _tabController,
            isScrollable: true,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Tab(
                  child: Text(
                    'All',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: Dimensions.heightCalc(context, 18),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Tab(
                  child: Text('Ongoing',
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: Dimensions.heightCalc(context, 18),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Tab(
                  child: Text('Completed',
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: Dimensions.heightCalc(context, 18),
                      )),
                ),
              ),
            ]),
      ),
      Expanded(
        child: TabBarView(
            controller: _tabController,
            children: const [AllScreen(), Ongoing(), Completed()]),
      ),
    ]));
  }
}

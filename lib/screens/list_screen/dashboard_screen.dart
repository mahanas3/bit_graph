import 'package:bit_graph/utilities/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0x000000ff),
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.black87,
                ),
              )
            ]),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 130),
            child: Text('Dashboard Design',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 20),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70, top: 10),
            child: Text(
              'Today,Shared by - Unbox Digital',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: Dimensions.heightCalc(context, 15),
                  fontFamily: 'Metropolis'),
            ),
          ),
          SizedBox(
            height: Dimensions.heightCalc(context, 20),
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: Dimensions.heightCalc(context, 200),
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: CircularPercentIndicator(
                radius: 50,
                lineWidth: 10,
                animation: true,
                center: const Text(
                  "${85}%",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                percent: 85 / 100,
                progressColor: Colors.green,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 155, top: 20),
              child: Text(
                'Team',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: Dimensions.heightCalc(context, 15)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 150),
              child: Container(
                height: Dimensions.heightCalc(context, 45),
                width: Dimensions.widthCalc(context, 50),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYZxEcLn9GPG9z7cMn4DqQ1W1HwIQa6rG8ug&usqp=CAU',
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 170),
              child: Container(
                height: Dimensions.heightCalc(context, 45),
                width: Dimensions.widthCalc(context, 50),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9XASoafoiragln7XakM_vz4fkGgNJ55DozQ&usqp=CAU',
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 190),
              child: Container(
                height: Dimensions.heightCalc(context, 45),
                width: Dimensions.widthCalc(context, 50),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb07j28WO-qOFT0umuaCqUGe2megyIuE4RXQ&usqp=CAU',
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 210),
              child: Container(
                height: Dimensions.heightCalc(context, 45),
                width: Dimensions.widthCalc(context, 50),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9XASoafoiragln7XakM_vz4fkGgNJ55DozQ&usqp=CAU',
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230, top: 50),
              child: Container(
                height: Dimensions.heightCalc(context, 45),
                width: Dimensions.widthCalc(context, 45),
                decoration: const BoxDecoration(
                    color: Colors.orangeAccent, shape: BoxShape.circle),
                child: const Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 155, top: 120),
              child: Text(
                'Deadline',
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 18),
                    fontFamily: 'Metropolis'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150, top: 155),
              child: Row(
                children: [
                  const Icon(Icons.calendar_month, color: Colors.grey),
                  SizedBox(
                    width: Dimensions.widthCalc(context, 5),
                  ),
                  const Text(
                    'June 15,2021-june 22,2022',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 150),
            child: Text(
              'Project Progress',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, top: 50),
            child: Text(
              'Create user flow',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 42, top: 20),
            child: Text(
              'Create wireframe',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 20),
            child: Text(
              'Transform to visual design',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [
                Text(
                  'Project Overview',
                  style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: Dimensions.heightCalc(context, 20)),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 90),
                ),
                const Text(
                  'Weekly',
                  style: TextStyle(color: Colors.grey),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          // LineChart(
          //   LineChartData(
          //     minX: 0,
          //     maxX: 11,
          //     minY: 0,
          //     maxY: 7,
          //     gridData: FlGridData(
          //       show: true,
          //       getDrawingHorizontalLine: (value){
          //         return const FlLine(
          //           color: Colors.black87,
          //           strokeWidth:  1
          //         );
          //       },drawVerticalLine: true
          //     ),
          //     borderData: FlBorderData(
          //       show: true,
          //       border: Border.all()
          //     ),
          //     lineBarsData: [LineChartBarData(
          //       spots: [
          //         FlSpot(0, 3),
          //         FlSpot(2.6, 2),
          //         FlSpot(4.9 ,5),
          //         FlSpot(6.8, 2.5),
          //         FlSpot(8,4),
          //         FlSpot(9.5, 3),
          //         FlSpot(11, 4),
          //       ]
          //     )
          //   ]),
          // )
        ]));
  }
}

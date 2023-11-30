import 'package:bit_graph/utilities/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Ongoing extends StatefulWidget {
  const Ongoing({super.key});

  @override
  State<Ongoing> createState() => _OngoingState();
}

class _OngoingState extends State<Ongoing> {
  List title = ['App Animation', 'Dashboard Design', 'UI/UX Design'];

  List subTitle = [
    'Today,Shared by-Unbox Digital',
    'Today,Shared by-Unbox Digital',
    'Today,Shared by-Unbox Digital'
  ];

  List profileImages1 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYZxEcLn9GPG9z7cMn4DqQ1W1HwIQa6rG8ug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Hb5xzFZJCTW4cMqmPwsgfw-gILUV7QevvQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTo6ARBswBWAg01jX_Seb_5TmTah51TndJtQ&usqp=CAU'
  ];

  List profileImages2 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9XASoafoiragln7XakM_vz4fkGgNJ55DozQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO0EoiRO_wZvO1CFlV6sf-bOCRMbhG8cN39g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStdDJFuE9hiSrbX9NDRZxi6bTwWJ7HeiFfbQ&usqp=CAU'
  ];

  List profileImages3 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb07j28WO-qOFT0umuaCqUGe2megyIuE4RXQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp2qd2bTlsLKwIe_9YHW6Adp39pCvhHmldxA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe-nDXn1Xg8qOP0odcLuOkPZ7kpLzeGI-3FQ&usqp=CAU'
  ];

  List profileImages4 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9XASoafoiragln7XakM_vz4fkGgNJ55DozQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO0EoiRO_wZvO1CFlV6sf-bOCRMbhG8cN39g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStdDJFuE9hiSrbX9NDRZxi6bTwWJ7HeiFfbQ&usqp=CAU'
  ];

  List<Color> progressColors = [
    Colors.deepPurple,
    Colors.green,
    Colors.orangeAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Dimensions.heightCalc(context, 450),
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: Dimensions.heightCalc(context, 200),
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      title[index],
                      style: TextStyle(
                          fontSize: Dimensions.heightCalc(context, 18),
                          fontFamily: 'Metropolis'),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.heightCalc(context, 8),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 30),
                    child: Text(
                      subTitle[index],
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 30),
                    child: Text(
                      'Team',
                      style: TextStyle(
                          fontSize: Dimensions.heightCalc(context, 15),
                          fontFamily: 'Metropolis'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 30),
                    child: Container(
                      height: Dimensions.heightCalc(context, 45),
                      width: Dimensions.widthCalc(context, 50),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(profileImages1[index]),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 50),
                    child: Container(
                      height: Dimensions.heightCalc(context, 45),
                      width: Dimensions.widthCalc(context, 50),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(profileImages2[index]),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 70),
                    child: Container(
                      height: Dimensions.heightCalc(context, 45),
                      width: Dimensions.widthCalc(context, 50),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(profileImages3[index]),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 90),
                    child: Container(
                      height: Dimensions.heightCalc(context, 45),
                      width: Dimensions.widthCalc(context, 50),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(profileImages4[index]),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 115),
                    child: Container(
                      height: Dimensions.heightCalc(context, 40),
                      width: Dimensions.widthCalc(context, 40),
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.orangeAccent,
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 220),
                    child: CircularPercentIndicator(
                      radius: 50,
                      lineWidth: 10,
                      animation: true,
                      center: const Text(
                        "${40}%",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      percent: 40 / 100,
                      progressColor:
                          progressColors[index % progressColors.length],
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 165, left: 30),
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.widthCalc(context, 10),
                  )
                ]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: Dimensions.heightCalc(context, 10),
                );
              },
              itemCount: title.length,
            ),
          )
        ],
      ),
    );
  }
}

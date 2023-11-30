import 'package:bit_graph/utilities/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DialyTask extends StatefulWidget {
  const DialyTask({super.key});

  @override
  State<DialyTask> createState() => _DialyTaskState();
}

class _DialyTaskState extends State<DialyTask> {
  @override
  Widget build(BuildContext context) {

    List images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwI41pQ1FiL_L7BNzMLQJYaTQVIWRwP--2w&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxLt8o2yToAm9Uh4KGGlEGFjgoGShKeMjFQw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJv73UwRMWEsZiMBDcKQsvCILlkdVpeZ8tq2Qot9-8fVs-u1FBDIO39UkTMaERF5E1764&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA9xUvtGnKcZ9daeYymg8YVLAiWqJCaNfDzQ&usqp=CAU'
    ];

    final List<IconData> iconss = [
      Icons.access_alarms_outlined,
      Icons.arrow_forward,
      Icons.offline_pin_rounded,
      Icons.cancel
    ];

    List text = ['In Progress', 'Ongoing', 'Completed', 'Cancel'];

    List tasks = ['App Animation', 'Dashboard Design', 'UI/UX Design'];

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

    List<Color> progressColors = [
      Colors.deepPurple,
      Colors.green,
      Colors.orangeAccent,
    ];

    bool value = false;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    color: Colors.grey,
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
                style: TextStyle(
                    fontSize: Dimensions.heightCalc(context, 22),
                    fontFamily: 'Metropolis'),
              ),
            ),
            Container(
              height: Dimensions.heightCalc(context, 350),
              width: Dimensions.widthCalc(context, 320),
              child: GridView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(images[index]),
                              fit: BoxFit.fill)),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 30),
                          child: Icon(
                            iconss[index],
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.heightCalc(context, 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text(
                            text[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Dimensions.heightCalc(context, 20),
                                fontFamily: 'Metropolis'),
                          ),
                        )
                      ],
                    )
                  ]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: Row(
                children: [
                  Text(
                    'Dialy Task',
                    style: TextStyle(
                        fontSize: Dimensions.heightCalc(context, 20),
                        fontFamily: 'Metropolis'),
                  ),
                  SizedBox(
                    width: Dimensions.widthCalc(context, 130),
                  ),
                  Text(
                    'All Task',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: Dimensions.heightCalc(context, 18)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.grey,
                    size: Dimensions.heightCalc(context, 30),
                  )
                ],
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Stack(children: [
                  Container(
                    width: double.infinity,
                    height: Dimensions.heightCalc(context, 100),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                  ),
                  // Checkbox(
                  //   shape: CircleBorder(side: BorderSide()), value: t,
                  //   // value: this.value,
                  //   // onChanged: (bool? value) {
                  //   //   setState(() {
                  //   //     this.value = value;
                  //   //   });
                  //   // },
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 50),
                    child: Text(
                      tasks[index],
                      style: TextStyle(
                          fontSize: Dimensions.heightCalc(context, 18),
                          fontFamily: 'Metropolis'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 240, top: 20),
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
                    padding: const EdgeInsets.only(top: 20, left: 260),
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
                    padding: const EdgeInsets.only(top: 20, left: 280),
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
                  const Padding(
                    padding: EdgeInsets.only(left: 335, top: 30),
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 40),
                    child: LinearPercentIndicator(
                      lineHeight: Dimensions.heightCalc(context, 12),
                      percent: 0.5,
                      width: Dimensions.widthCalc(context, 200),
                      barRadius: const Radius.circular(10),
                      progressColor:
                          progressColors[index % progressColors.length],
                      backgroundColor: Colors.white,
                    ),
                  )
                ]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: Dimensions.heightCalc(context, 10),
                );
              },
              itemCount: tasks.length,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> numbers = [0, 1, 2, 3, 4];
  int seconds = 60;
  final List<String> textList = [
    'DEMO',
    '  15  ',
    '  20  ',
    '  25  ',
    '  30  ',
    '  35  '
  ];
  final List<int> minute = [0, 15, 20, 25, 30, 35];
  int centerIndex = 0;
  int settingMinutes = 0;
  int remainSeconds = 0;
  int totalPomodoros = 0;
  int goal = 0;
  bool isResting = false;
  bool isRunning = false;
  bool isSetted = false;
  bool isDemo = false;
  String message = 'set time';
  late Timer timer;

  void onTick(Timer timer) {
    if (goal == 12) {
      setState(() {
        message = 'congratulation';
      });
      timer.cancel();
    } else if (totalPomodoros == 4) {
      totalPomodoros = 0;
      isResting = true;
      goal += 1;

      if (isDemo == true) {
        remainSeconds = 15;
        message = '5 minute resting(in demo 15seconds)';
      } // resting
      else {
        remainSeconds = settingMinutes;
        message = '5 minute resting';
      }

      setState(() {});
    } else if (remainSeconds == 0 && isResting == false) {
      totalPomodoros += 1;
      remainSeconds = settingMinutes;
      setState(() {});
    } else if (remainSeconds == 0 && isResting == true) {
      setState(() {
        remainSeconds = settingMinutes;
        if (isDemo == true) {
          remainSeconds = 10;
        }
        isResting = false;
        message = 'Okay restart';
      });
    } else {
      setState(() {
        remainSeconds -= 1;
      });
    }
  }

  void onTimePressed(index) {
    //settingMinutes = 25 * 60;

    settingMinutes = minute[index] * 60;
    isDemo = false;
    message = 'time setted';
    if (index == 0) {
      isDemo = true;
      settingMinutes = 5;
      message = 'time setted(short demo)';
    }

    remainSeconds = settingMinutes;
    isResting = false;
    isSetted = true;

    setState(() {});
  }

  void onStartPressed() {
    if (isSetted == true) {
      timer = Timer.periodic(
        const Duration(seconds: 1),
        onTick,
      );
      setState(() {
        isRunning = true;
        message = 'started';
        if (isResting == true) {
          message = 'keep resting';
        }
      });
    }
  }

  void onPausePressed() {
    timer.cancel();

    setState(() {
      isRunning = false;
      message = 'stopped';
    });
  }

  String formatMinutes(int seconds) {
    var duration = Duration(seconds: seconds);
    //print(duration.toString().split("."));
    //print(duration.toString().split(".").first);
    //print(duration.toString().split(".").first.substring(2, 7));
    return duration.toString().split(".").first.substring(2, 4);
  }

  String formatSeconds(int seconds) {
    var duration = Duration(seconds: seconds);
    //print(duration.toString().split("."));
    //print(duration.toString().split(".").first);
    //print(duration.toString().split(".").first.substring(2, 7));
    return duration.toString().split(".").first.substring(5, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffE64D3D),
                border: Border.all(width: 10, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 25,
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'POMOTIER',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 10, color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          formatMinutes(remainSeconds),
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 80,
                            backgroundColor: Colors.white,
                            color: Color(0xffE64D3D),
                          ),
                        ),
                      ),
                      const Text(
                        ':',
                        style:
                            TextStyle(fontSize: 100, color: Color(0xffF0928A)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 10, color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          formatSeconds(remainSeconds),
                          style: const TextStyle(
                            fontSize: 80,
                            backgroundColor: Colors.white,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffE64D3D),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: textList.asMap().entries.map((entry) {
                          int index = entry.key;
                          String text = entry.value;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                centerIndex = index;
                              });
                              onTimePressed(index); // 버튼 눌림 처리
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: centerIndex == index
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                centerIndex == index ? text : text,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: centerIndex == index
                                      ? const Color(0xffE64D3D)
                                      : Colors.white,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  IconButton(
                      onPressed: isRunning ? onPausePressed : onStartPressed,
                      icon: Transform.scale(
                        scale: 4, // 그냥 아이콘을 키우면 중앙이 안맞음
                        child: Icon(
                          isRunning
                              ? Icons.pause_circle_outlined
                              : Icons.play_circle_outline,
                          color: Theme.of(context).cardColor,
                        ),
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    message,
                    style:
                        const TextStyle(color: Color(0xffF4A59E), fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 40,
                        ),
                        child: Column(
                          children: [
                            Text(
                              '$totalPomodoros/4',
                              style: const TextStyle(
                                  color: Color(0xffF4A59E), fontSize: 20),
                            ),
                            const Text(
                              'ROUND',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 40,
                        ),
                        child: Column(
                          children: [
                            Text(
                              '$goal/12',
                              style: const TextStyle(
                                  color: Color(0xffF4A59E), fontSize: 20),
                            ),
                            const Text(
                              '  GOAL  ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

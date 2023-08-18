import 'package:flutter/material.dart';
import 'package:mission1/widgets/Schedule.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color(0xff1F1F1F),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/logo2.png',
                              ),
                              Image.asset(
                                'assets/logo3.png',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Monday 16',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'TODAY',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    ' · ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    '17   18   19  2',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 37,
                                      color: Color(0xff8E8E8E),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Schedule(
                        time: ['11', '30', '12', '20'],
                        name: ['ALEX', 'HELENA', 'NANA', ''],
                        schedulename: 'DESIGN \nMEETING'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Schedule(
                        time: ['12', '35', '14', '10'],
                        name: ['ME', 'RICHARD', 'CIRY', '+4'],
                        schedulename: 'DAILY \nPROJECT'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Schedule(
                        time: ['15', '00', '16', '30'],
                        name: ['DEN', 'NANA', 'MARK', ''],
                        schedulename: 'WEEKLY \nPLANNING'),
                  ],
                ),
              ),
            )));
  }
}

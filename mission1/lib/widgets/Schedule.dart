import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  final String schedulename;
  final List<String> name;
  final List<String> time;
  static int count = 0;

  const Schedule({
    super.key,
    required this.time,
    required this.name,
    required this.schedulename,
  });

  @override
  Widget build(BuildContext context) {
    count++;
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: count % 3 == 1
            ? const Color(0xffFEF754)
            : (count % 3 == 2
                ? const Color(0xff9869C4)
                : const Color(0xffBCEE4B)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      time[0],
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(time[1]),
                    const SizedBox(
                      height: 10,
                    ),
                    Transform.scale(scaleY: 2, child: const Text('|')),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      time[2],
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(time[3]),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      schedulename,
                      style: const TextStyle(
                        fontSize: 60,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          name[0],
                          style: TextStyle(
                            color: name[0] == 'ME' ? Colors.black : Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          name[1],
                          style: TextStyle(
                              color:
                                  name[1] == 'ME' ? Colors.black : Colors.grey),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(name[2],
                            style: TextStyle(
                                color: name[2] == 'ME'
                                    ? Colors.black
                                    : Colors.grey)),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(name[3],
                            style: TextStyle(
                                color: name[3] == 'ME'
                                    ? Colors.black
                                    : Colors.grey))
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

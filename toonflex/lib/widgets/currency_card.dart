import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  static int order = 0;

  final _blackColor = const Color(0xff1f2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    order++;
    return Transform.translate(
      offset: Offset(0, (order - 1) * (-22)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: order % 2 == 0 ? Colors.white : _blackColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 28,
                      color: order % 2 == 0 ? _blackColor : Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          fontSize: 20,
                          color: order % 2 == 0 ? _blackColor : Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          fontSize: 15,
                          color: order % 2 == 0
                              ? _blackColor
                              : Colors.white.withOpacity(0.6),
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2.1,
                child: Transform.translate(
                  offset: const Offset(-2, 10),
                  child: Icon(
                    icon,
                    color: order % 2 == 0 ? _blackColor : Colors.white,
                    size: 85,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

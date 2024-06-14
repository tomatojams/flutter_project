import 'package:flutter/material.dart';
import 'package:toonflex/widgets/Button.dart';
import 'package:toonflex/widgets/currency_card.dart';

class Player {
  String name;

  Player({required this.name});
}

void main() {
  runApp(const Joy());
}

class Joy extends StatelessWidget {
  const Joy({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '_____',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text('__________',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                ))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey,Selena',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('Welcome back',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 15,
                                ))
                          ])
                    ]),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 382',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xfff1b33b),
                      textcolor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xff1f2123),
                      textcolor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                ),
                const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '55 622',
                  icon: Icons.attach_money_rounded,
                ),
                const CurrencyCard(
                  name: 'BitCoin',
                  code: 'BTC',
                  amount: '78 523',
                  icon: Icons.currency_bitcoin_outlined,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

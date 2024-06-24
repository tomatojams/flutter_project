import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  // void _onLoading() async {
  //   // monitor network fetch
  //   await Future.delayed(const Duration(milliseconds: 1000));
  //   // if failed,use loadFailed(),if no data return,use LoadNodata()
  //   items.add((items.length + 1).toString());
  //   if (mounted) {
  //     setState(() {});
  //   }
  //   _refreshController.loadComplete();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.green],
            ),
          ),
          child: SmartRefresher(
            enablePullDown: true,
            enablePullUp: true,
            header: const WaterDropHeader(),
            controller: _refreshController,
            onRefresh: _onRefresh,
            child: ListView(children: const [
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
              Text('6'),
              Column(
                children: [
                  Text('7'),
                  Text('8'),
                ],
              )
            ]),
            // child: ListView.builder(
            //   itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
            //   itemExtent: 100.0,
            //   itemCount: items.length,
            // ),
          ),
        ),
      ),
    );
  }
}

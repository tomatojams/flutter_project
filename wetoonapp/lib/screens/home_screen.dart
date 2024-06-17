import 'package:flutter/material.dart';
import 'package:wetoonapp/models/webtoon_model.dart';
import 'package:wetoonapp/services/api_service.dart';
import 'package:wetoonapp/widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();
  //<immutalble>

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //return Listview(
            //childre:[
            //for(var webtoon in snapsho.data!) Text(webtoon.title)]),
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: makeList(snapshot))
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length, // 길이를  화면에 필요한 만큼만 인덱스를 가져옴
      itemBuilder: (context, index) {
        // print(index);
        var webtoon = snapshot.data![index];
        return Webtoon(
          thumb: webtoon.thumb,
          title: webtoon.title,
          id: webtoon.id,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}

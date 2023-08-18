import 'package:flutter/material.dart';
import 'package:movieflix/models/coming_model.dart';
import 'package:movieflix/models/movie_model.dart';
import 'package:movieflix/models/nowin_model.dart';
import 'package:movieflix/services/api_service.dart';
import 'package:movieflix/widgets/movie_widget.dart';
import 'package:movieflix/widgets/nowin_widget.dart';
import 'package:movieflix/widgets/coming_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<MovieModel>> movies = ApiService.getTodaysToons();
  final Future<List<NowInModel>> nowin = ApiService.getNowIn();
  final Future<List<ComingModel>> coming = ApiService.getComing();

  //<immutalble>

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 7,
            child: FutureBuilder(
              future: movies,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Popular Movies',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(child: makeList(snapshot))
                      ],
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          Flexible(
            flex: 6,
            child: FutureBuilder(
              future: nowin,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Now in Cinemas',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(child: makeNowList(snapshot))
                      ],
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          Flexible(
            flex: 4,
            child: FutureBuilder(
              future: coming,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Coming Soon',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(child: makeComingList(snapshot))
                      ],
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<MovieModel>> snapshot) {
    return ListView.separated(
      //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length, // 길이를  화면에 필요한 만큼만 인덱스를 가져옴
      itemBuilder: (context, index) {
        var movie = snapshot.data![index];
        return Movie(
          poster: movie.poster,
          title: movie.title,
          id: movie.id,
          overview: movie.overview,
          vote: movie.vote,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 15,
      ),
    );
  }

  ListView makeNowList(AsyncSnapshot<List<NowInModel>> snapshot) {
    return ListView.separated(
      //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length, // 길이를  화면에 필요한 만큼만 인덱스를 가져옴
      itemBuilder: (context, index) {
        var movie = snapshot.data![index];
        return NowIn(
          poster: movie.poster,
          title: movie.title,
          id: movie.id,
          overview: movie.overview,
          vote: movie.vote,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 15,
      ),
    );
  }

  ListView makeComingList(AsyncSnapshot<List<ComingModel>> snapshot) {
    return ListView.separated(
      //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length, // 길이를  화면에 필요한 만큼만 인덱스를 가져옴
      itemBuilder: (context, index) {
        var movie = snapshot.data![index];
        return Coming(
          poster: movie.poster,
          title: movie.title,
          id: movie.id,
          overview: movie.overview,
          vote: movie.vote,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 15,
      ),
    );
  }
}

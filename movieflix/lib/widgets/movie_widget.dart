import 'package:flutter/material.dart';
import 'package:movieflix/screens/detail_screen.dart';

class Movie extends StatelessWidget {
  final String title, poster, overview;
  final int id;
  final num vote;

  const Movie(
      {super.key,
      required this.poster,
      required this.title,
      required this.id,
      required this.overview,
      required this.vote});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
                poster: poster,
                title: title,
                id: id,
                overview: overview,
                vote: vote),
          ),
        );
      },
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                //width: 280,
                //height: 220,
                clipBehavior: Clip.hardEdge, // 자식(image)가 부모를 넘어설때 짜름.
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Transform.scale(
                  scale: 2,
                  child: Image.network(
                    poster,
                    headers: const {
                      "User-Agent":
                          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movieflix/services/api_service.dart';
import 'package:simple_star_rating/simple_star_rating.dart';

class DetailScreen extends StatefulWidget {
  final String title, poster, overview;
  final int id;
  final num vote;
  const DetailScreen({
    super.key,
    required this.poster,
    required this.title,
    required this.id,
    required this.overview,
    required this.vote,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<List<String>> genre;
  @override
  void initState() {
    super.initState();
    genre = ApiService.getGenre(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff232429),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Back to list',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        ),
        foregroundColor: Colors.white,
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 0.5,
                child: Container(
                  //height: 1000,
                  //width: 350,
                  clipBehavior: Clip.hardEdge, // 자식(image)가 부모를 넘어설때 짜름.
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        scale: Checkbox.width,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          widget.poster,
                          headers: {
                            "User-Agent":
                                "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                          },
                        ),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 250,
                        ),
                        Text(
                          widget.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SimpleStarRating(
                            starCount: 5,
                            rating: widget.vote / 2,
                            size: 20,
                            spacing: 10),
                        const SizedBox(
                          height: 20,
                        ),
                        FutureBuilder(
                          future: genre,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              final strList = snapshot.data;
                              return Text(
                                '$strList',
                                style: const TextStyle(color: Colors.white),
                              );
                            }
                            return const Text('...');
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Storyline',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.overview,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Buy Ticket',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

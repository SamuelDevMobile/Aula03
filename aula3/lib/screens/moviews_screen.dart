import 'dart:convert';
import 'package:aula3/screens/model/MoviewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  static const String id = '/movies_screen';

  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  // var moviesList = <MovieModel>[];
  List<MovieModel> movieList = [];

  @override
  void initState() {
    fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: movieList.length,
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemBuilder: (_, index) {
              final movie = movieList[index];
              return Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  height: 140,
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          child: Image.network(
                            movie.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movie.title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              movie.description,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> fetchMovies() async {
    try {
      final url = Uri.parse('https://demo7206081.mockable.io/movies');
      final response = await Client().get(url);

      final moviesListJson = jsonDecode(response.body);

      movieList = moviesListJson['results']
          .map<MovieModel>((moviesJson) => MovieModel.fromJson(moviesJson))
          .toList();
      setState(() {});
    } catch (_) {}
  }
}

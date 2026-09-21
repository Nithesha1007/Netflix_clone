import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:netflix_clone/Models/movie_model.dart';

class MovieService {
// static Future<List<MovieModel>> loadMovies() async{
//   final String jsonString = await rootBundle.loadString(
//     'assets/Data/movies.json',
//   );
//   final List<dynamic> jsonData = jsonDecode(jsonString);
//   return jsonData.map((movie)=> MovieModel.fromJson(movie)
//   ).toList();
// }

static Future<List<MovieModel>> loadMovies() async {
  try {
    final String jsonString = await rootBundle.loadString(
      'assets/Data/movie.json',
    );

    print("JSON LOADED");
    print(jsonString);

    final List<dynamic> jsonData = jsonDecode(jsonString);

    print("JSON PARSED");

    return jsonData
        .map((movie) => MovieModel.fromJson(movie))
        .toList();
  } catch (e) {
    print("MOVIE SERVICE ERROR: $e");
    rethrow;
  }
  
}
static Future<List<MovieModel>> getRecentlyAddedMovies() async{
  final movies = await loadMovies();
  return movies.where((movie)=> movie.isRecentlyAdded
  ).toList();
}

static Future<List<MovieModel>> getOnlyOnNetflixMovies() async{
  final movies = await loadMovies();
  return movies.where((movie) => movie.onlyOnNetflix
  ).toList();
}

static Future<List<MovieModel>> isTop10() async {
  final movies = await loadMovies();
  return movies.where((movie) => movie.isTop10
  ).toList();
}
static Future<List<MovieModel>> isAwardwinningseries() async{
  final movies = await loadMovies();
  return movies.where((movie) => movie.isAwardwinningseries
  ).toList();
}

}
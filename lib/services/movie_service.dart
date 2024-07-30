import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;
import 'package:my_app/models/movie_response.dart';

Future<MovieResponse> loadMoviesFromAssets() async {
  final jsonString = await rootBundle.loadString('assets/data.json');
  final jsonResponse = json.decode(jsonString);

  // Parse JSON to MovieResponse object
  MovieResponse movieResponse = MovieResponse.fromJson(jsonResponse);

  // Shuffle the list of movies to get random order
  movieResponse.results.shuffle(Random());

  return movieResponse;
}

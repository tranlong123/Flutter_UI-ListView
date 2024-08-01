import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/screens/movie_screen/movie_des_left.dart';
import 'package:my_app/screens/movie_screen/movie_des_right.dart';
import 'package:my_app/styles/dimensions.dart';

class MovieDescription extends StatelessWidget {
  final Movie movie;
  const MovieDescription({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieDesLeft(movie: movie),
        const MovieDesRight()
      ],
    );
  }
}

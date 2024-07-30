// lib/widgets/movie_grid_item.dart
import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/styles/dimensions.dart';
import '../screens/movie_screen/movie_screens.dart';

class MovieGridItem extends StatelessWidget {
  final Movie movie;

  const MovieGridItem({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieScreen(movie: movie),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
            left: AppDimensions.sizedBox5, right: AppDimensions.sizedBox5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            movie.posterPath,
            fit: BoxFit.cover,
            width: AppDimensions.gridItemWidth,
            height: AppDimensions.gridItemHeight,
          ),
        ),
      ),
    );
  }
}

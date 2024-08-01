import 'package:flutter/material.dart';
import 'package:my_app/models/movie_response.dart';
import 'package:my_app/services/movie_service.dart';
import 'package:my_app/services/movies_list_provider.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/movie_grid_list.dart';

class MayBeLikeList extends StatefulWidget {
  const MayBeLikeList({super.key});

  @override
  State<MayBeLikeList> createState() => _MayBeLikeListState();
}

class _MayBeLikeListState extends State<MayBeLikeList> {
  late Future<MovieResponse> futureMovies;

  @override
  void initState() {
    super.initState();
    futureMovies = loadMoviesFromAssets();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.screenWidth,
      height: AppDimensions.sizedBox378,
      child: MoviesListProvider(
        futureMovies: futureMovies,
        childBuilder: (movies) => MovieGridList(movies: movies),
        limit: 6,
      ),
    );
  }
}

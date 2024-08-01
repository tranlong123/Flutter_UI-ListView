import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/movie_response.dart';
import 'package:my_app/widgets/movie_grid_list.dart';
import 'package:my_app/services/movie_service.dart';
import 'package:my_app/services/movies_list_provider.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/app_bar_title.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  MovieListScreenState createState() => MovieListScreenState();
}

class MovieListScreenState extends State<MovieListScreen> {
  late Future<MovieResponse> futureMovies;

  @override
  void initState() {
    super.initState();
    futureMovies = loadMoviesFromAssets();
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        scrolledUnderElevation: 0,
        backgroundColor: bgColor,
        systemOverlayStyle:
            SystemUiOverlayStyle.dark, // Đặt statusBarIconBrightness ở đây
      ),
      body: Container(
        color: bgColor,
        child: MoviesListProvider(
          futureMovies: futureMovies,
          childBuilder: (movies) => MovieGridList(movies: movies),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/models/movie_response.dart';
import 'package:my_app/screens/home_screen/home_top/home_top.dart';
import 'package:my_app/screens/home_screen/list_of_day/list_of_day.dart';
import 'package:my_app/screens/home_screen/trending_page/trending_page.dart';
import 'package:my_app/services/movie_service.dart';
import 'package:my_app/services/movies_list_provider.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<MovieResponse> futureMovies;

  @override
  void initState() {
    super.initState();
    futureMovies = loadMoviesFromAssets();
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: bgColor,
            child: Column(
              children: [
                MoviesListProvider(
                  futureMovies: futureMovies,
                  childBuilder: (movies) => HomeTop(movies: movies),
                ),
                SizedBox(
                  height: AppDimensions.sizedBox14,
                ),
                MoviesListProvider(
                  futureMovies: futureMovies,
                  childBuilder: (movies) => TrendingPage(movies: movies),
                  limit: 6,
                ),
                SizedBox(
                  height: AppDimensions.sizedBox9,
                ),
                MoviesListProvider(
                  futureMovies: futureMovies,
                  childBuilder: (movies) => ListOfDay(movies: movies),
                  limit: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

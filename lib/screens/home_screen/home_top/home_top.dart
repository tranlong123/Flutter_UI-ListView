import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/screens/trending_list_screen/trending_list_screen.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/app_bar_title.dart';

class HomeTop extends StatelessWidget {
  final List<Movie> movies;
  const HomeTop({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TrendingListScreen(movies: movies),
                ),
              );
            },
            child: const AppBarTitle(),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/search'),
            child: Icon(Icons.search, size: AppDimensions.searchIconSize),
          ),
        ],
      ),
    );
  }
}

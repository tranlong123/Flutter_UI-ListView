import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/screens/trending_list_screen/trending_list/trending_item.dart';
import 'package:my_app/styles/dimensions.dart';

class TrendingList extends StatelessWidget {
  final List<Movie> movies;
  final ScrollController scrollController;
  final bool isLoadingMore;
  const TrendingList(
      {super.key,
      required this.movies,
      required this.scrollController,
      required this.isLoadingMore});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Padding(
      padding: EdgeInsets.only(top: AppDimensions.fontSize20),
      child: ListView.builder(
        controller: scrollController,
        itemCount: movies.length + (isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == movies.length) {
            return const Center(child: CircularProgressIndicator());
          }
          return TrendingItem(movie: movies[index]);
        },
      ),
    );
  }
}

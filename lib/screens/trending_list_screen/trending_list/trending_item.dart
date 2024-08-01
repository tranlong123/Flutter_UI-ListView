import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/screens/movie_screen/movie_screens.dart';
import 'package:my_app/screens/trending_list_screen/trending_list/item_description.dart';
import 'package:my_app/screens/trending_list_screen/trending_list/item_image.dart';
import 'package:my_app/widgets/item_vote.dart';
import 'package:my_app/styles/dimensions.dart';

class TrendingItem extends StatelessWidget {
  final Movie movie;
  const TrendingItem({super.key, required this.movie});

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
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemImage(item: movie.posterPath),
              ItemDescription(
                  title: movie.title,
                  vote: movie.voteAverage,
                  overview: movie.overview),
              ItemVote(voteCount: movie.voteCount)
            ],
          ),
          SizedBox(
            height: AppDimensions.sizedBox35,
          )
        ],
      ),
    );
  }
}

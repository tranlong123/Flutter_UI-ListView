import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/screens/movie_screen/may_be_like_list.dart';
import 'package:my_app/screens/movie_screen/may_be_like_text.dart';
import 'package:my_app/screens/movie_screen/movie_description.dart';
import 'package:my_app/screens/movie_screen/movie_poster.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/start_vote.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;

  const MovieScreen({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MoviePoster(
                  background: movie.backdropPath, image: movie.posterPath),
              Padding(
                padding: EdgeInsets.only(left: AppDimensions.sizedBox16),
                child: StartVote(vote: movie.voteAverage),
              ),
              MovieDescription(movie: movie),
              SizedBox(height: AppDimensions.sizedBox45),
              const MayBeLikeText(),
              const MayBeLikeList(),
            ],
          ),
        ),
      ),
    );
  }
}

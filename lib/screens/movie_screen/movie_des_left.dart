import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/item_overview.dart';
import 'package:my_app/widgets/item_title.dart';
import 'package:my_app/widgets/item_vote.dart';

class MovieDesLeft extends StatelessWidget {
  final Movie movie;
  const MovieDesLeft({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: AppDimensions.sizedBox18),
          child: ItemTitle(
            title: movie.title,
            width: AppDimensions.sizedBox124,
          ),
        ),
        SizedBox(
          height: AppDimensions.sizedBox4,
        ),
        Padding(
          padding:  EdgeInsets.only(left: AppDimensions.sizedBox19),
          child: Text(
            movie.releaseDate,
            style: TextStyle(
                color: black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: AppDimensions.fontSize10,
                height: 1.172),
          ),
        ),
        SizedBox(
          height: AppDimensions.sizedBox9,
        ),
        Padding(
          padding: EdgeInsets.only(left: AppDimensions.sizedBox16,),
          child: ItemVote(voteCount: movie.voteCount),
        ),
        Padding(
          padding: EdgeInsets.only(left: AppDimensions.sizedBox16),
          child: SizedBox(
              width: AppDimensions.sizedBox124,
              height: AppDimensions.sizedBox86,
              child: ItemOverview(
                text: movie.overview,
                maxLines: 7,
                height: AppDimensions.sizedBox86,
              )),
        )
      ],
    );
  }
}

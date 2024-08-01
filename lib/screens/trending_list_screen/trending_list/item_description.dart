import 'package:flutter/material.dart';
import 'package:my_app/widgets/item_overview.dart';
import 'package:my_app/widgets/item_title.dart';
import 'package:my_app/widgets/start_vote.dart';
import 'package:my_app/styles/dimensions.dart';

class ItemDescription extends StatelessWidget {
  final String title;
  final double vote;
  final String overview;
  const ItemDescription(
      {super.key,
      required this.title,
      required this.vote,
      required this.overview});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return SizedBox(
      width: AppDimensions.sizedBox155,
      height: AppDimensions.sizedBox116,
      child: Column(
        children: [
          ItemTitle(title: title),
          StartVote(vote: vote),
          SizedBox(height: AppDimensions.sizedBox17),
          ItemOverview(text: overview)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';

class HeartIcon extends StatelessWidget {
  final bool isVote;
  final VoidCallback ontap;
  const HeartIcon({super.key, required this.ontap, required this.isVote});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return GestureDetector(
      onTap: ontap,
      child: Icon(
        Icons.favorite,
        color: isVote ? heart : heart2,
        size: AppDimensions.heartSize,
      ),
    );
  }
}

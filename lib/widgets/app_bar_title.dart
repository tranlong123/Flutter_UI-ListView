// lib/widgets/app_bar_title.dart
import 'package:flutter/material.dart';
import 'package:my_app/styles/colors.dart';
import '../styles/dimensions.dart';

class AppBarTitle extends StatelessWidget {
  final double ? fontSize;
  const AppBarTitle({super.key, this.fontSize});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return Text(
      'Trending',
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize?? AppDimensions.fontSize20,
        fontWeight: FontWeight.w700,
        height: 23.44 / 20, // line-height / font-size
        color: black,
      ),
    );
  }
}

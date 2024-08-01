import 'package:flutter/material.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';

class MayBeLikeText extends StatelessWidget {
  const MayBeLikeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimensions.dotSize,
        bottom: AppDimensions.sizedBox23
      ),
      child: Text(
        'May be you like',
        style: TextStyle(
          color: black,
          fontSize: AppDimensions.fontSize20,
          fontWeight: FontWeight.w700,
          height: 1.172,
        ),
      ),
    );
  }
}

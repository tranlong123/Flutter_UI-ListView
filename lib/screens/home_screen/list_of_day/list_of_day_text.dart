import 'package:flutter/material.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';

class ListOfDayText extends StatelessWidget {
  const ListOfDayText({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: AppDimensions.sizedBox16, bottom: AppDimensions.sizedBox9),
          child: Text(
            'List Of Day',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: AppDimensions.fontSize20,
              fontWeight: FontWeight.w700,
              height: 23.44 / 20, // line-height / font-size
              color: black,
            ),
          ),
        ),
      ],
    );
  }
}

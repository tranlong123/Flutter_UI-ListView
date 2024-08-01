import 'package:flutter/material.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';

class CateBox extends StatelessWidget {
  final String cate;
  const CateBox({super.key, required this.cate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.sizedBox18,
      decoration: BoxDecoration(
        color: cateColor,
        borderRadius: BorderRadius.circular(50)
      ),
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal:AppDimensions.sizedBox9 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              cate,
              style: TextStyle(
                color: black,
                fontSize: AppDimensions.fontSize10,
                height: 1.172,
                fontWeight: FontWeight.w700
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';

class ItemImage extends StatelessWidget {
  final String item;
  const ItemImage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimensions.sizedBox18,
        right: AppDimensions.sizedBox17,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.25),
              // Shadow color with 25% opacity
              blurRadius: 4.0, // Adjust blur radius as needed
              spreadRadius: 0, // Adjust spread radius as needed
              offset: const Offset(3, 4), // Shadow offset
            ),
          ],
        ),
        child: SizedBox(
          width: AppDimensions.trendingItemImageWidth,
          height: AppDimensions.trendingItemImageHeight,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              item,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

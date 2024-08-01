import 'package:flutter/material.dart';
import 'package:my_app/styles/dimensions.dart';

class MoviePoster extends StatelessWidget {
  final String image;
  final String background;
  const MoviePoster({super.key, required this.image, required this.background});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.screenWidth,
      height: AppDimensions.sizedBox233,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(background),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(113, 104, 80, 0), // rgba(113, 104, 80, 0)
              Color(0xFF716850), // #716850
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: AppDimensions.sizedBox12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppDimensions.fontSize10),
                child: Image.network(
                  image,
                  width: AppDimensions.gridItemWidth,
                  height: AppDimensions.gridItemHeight,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: AppDimensions.sizedBox4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

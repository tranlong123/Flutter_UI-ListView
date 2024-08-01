import 'package:flutter/material.dart';
import 'package:my_app/screens/movie_screen/movie_cate_list.dart';
import 'package:my_app/screens/movie_screen/watch_and_download.dart';
import 'package:my_app/styles/dimensions.dart';

class MovieDesRight extends StatelessWidget {
  const MovieDesRight({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Padding(
      padding: EdgeInsets.only(left: AppDimensions.sizedBox9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: AppDimensions.sizedBox3,
          ),
          const MovieCateList(),
          SizedBox(
            height: AppDimensions.sizedBox28,
          ),
          const WatchAndDownload(),
        ],
      ),
    );
  }
}

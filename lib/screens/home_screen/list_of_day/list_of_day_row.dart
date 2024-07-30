import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/movie_grid_item.dart';

class ListOfDayRow extends StatelessWidget {
  final List<Movie> movies;
  const ListOfDayRow({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return SizedBox(
      width: AppDimensions.screenWidth,
      height: AppDimensions.listOfDaySize,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.sizedBox5),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Số mục trên mỗi hàng
            childAspectRatio:
                100 / 160, // Tỷ lệ chiều rộng/chiều cao của mỗi mục
          ),
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return MovieGridItem(movie: movie); // Sử dụng widget item
          },
        ),
      ),
    );
  }
}

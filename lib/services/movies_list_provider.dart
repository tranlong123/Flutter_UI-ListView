import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/models/movie_response.dart';

class MoviesListProvider extends StatelessWidget {
  final Future<MovieResponse> futureMovies;
  final Widget Function(List<Movie>) childBuilder;
  final int? limit; // Thêm thuộc tính limit

  const MoviesListProvider({
    required this.futureMovies,
    required this.childBuilder,
    this.limit, 
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieResponse>(
      future: futureMovies,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Có lỗi xảy ra: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          // Lọc phim dựa vào limit nếu có
          final movies = limit != null
              ? snapshot.data!.results.take(limit!).toList()
              : snapshot.data!.results; // Không giới hạn số lượng nếu limit không có
          return childBuilder(movies);
        } else {
          return const Center(child: Text('Không có dữ liệu'));
        }
      },
    );
  }
}

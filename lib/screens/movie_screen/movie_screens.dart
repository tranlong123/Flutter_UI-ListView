import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';


class MovieScreen extends StatelessWidget {
  final Movie? movie;

  const MovieScreen({super.key, this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie!.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              movie!.posterPath,
              width: 100,
              height: 160,
            ),
            const SizedBox(height: 16),
            Text(
              movie!.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Release Date: ${movie?.releaseDate}'),
            const SizedBox(height: 8),
            Text(movie!.overview),
          ],
        ),
      ),
    );
  }
}

class Movie {
  final bool adult;
  final String backdropPath;
  final String overview;
  final List<int> genreIds;
  final String originalLanguage;
  final String originalTitle;
  final int id;
  final bool video;
  final double voteAverage;
  final String title;
  final int voteCount;
  final String releaseDate;
  final String posterPath;
  final double popularity;
  final String mediaType;

  Movie({
    required this.adult,
    required this.backdropPath,
    required this.overview,
    required this.genreIds,
    required this.originalLanguage,
    required this.originalTitle,
    required this.id,
    required this.video,
    required this.voteAverage,
    required this.title,
    required this.voteCount,
    required this.releaseDate,
    required this.posterPath,
    required this.popularity,
    required this.mediaType,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      genreIds: List<int>.from(json['genre_ids']),
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      id: json['id'],
      video: json['video'],
      voteAverage: json['vote_average'].toDouble(),
      title: json['title'],
      voteCount: json['vote_count'],
      releaseDate: json['release_date'],
      posterPath: json['poster_path'],
      popularity: json['popularity'].toDouble(),
      mediaType: json['media_type'],
    );
  }
}

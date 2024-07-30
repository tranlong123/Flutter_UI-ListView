import 'package:flutter/material.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/screens/home_screen/list_of_day/list_of_day_row.dart';
import 'package:my_app/screens/home_screen/list_of_day/list_of_day_text.dart';

class ListOfDay extends StatefulWidget {
  final List<Movie> movies;
  const ListOfDay({super.key, required this.movies});

  @override
  State<ListOfDay> createState() => _ListOfDayState();
}

class _ListOfDayState extends State<ListOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListOfDayText(),
        ListOfDayRow(movies: widget.movies),
      ],
    );
  }
}

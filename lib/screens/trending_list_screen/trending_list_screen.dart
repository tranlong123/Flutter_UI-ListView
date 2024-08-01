import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/movie.dart';
import 'package:my_app/screens/trending_list_screen/scroll_top_button.dart';
import 'package:my_app/screens/trending_list_screen/trending_list/trending_list.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/app_bar_title.dart';

class TrendingListScreen extends StatefulWidget {
  final List<Movie> movies;
  const TrendingListScreen({super.key, required this.movies});

  @override
  State<TrendingListScreen> createState() => _TrendingListScreenState();
}

class _TrendingListScreenState extends State<TrendingListScreen> {
  late List<Movie> _movies;
  late ScrollController _scrollController;
  bool _isLoadingMore = false;
  // ignore: unused_field
  bool _isRefreshing = false;
  bool _showScrollTopButton = false;

  @override
  void initState() {
    super.initState();
    _movies = widget.movies.take(15).toList();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !_isLoadingMore) {
      _loadMoreMovies();
    }
    if (_scrollController.position.pixels > 0 && !_showScrollTopButton) {
      setState(() {
        _showScrollTopButton = true;
      });
    } else if (_scrollController.position.pixels <= 0 && _showScrollTopButton) {
      setState(() {
        _showScrollTopButton = false;
      });
    }
  }

  Future<void> _loadMoreMovies() async {
    setState(() {
      _isLoadingMore = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _movies.addAll(widget.movies.skip(_movies.length).take(15));
      _isLoadingMore = false;
    });
  }

  Future<void> _refreshMovies() async {
    setState(() {
      _isRefreshing = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _movies = widget.movies.take(15).toList();
      _isRefreshing = false;
    });
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: AppBarTitle(
            fontSize: AppDimensions.fontSize30,
          ),
          leading: Container(),
          leadingWidth: 0,
          backgroundColor: bgColor,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          scrolledUnderElevation: 0,
        ),
        body: Stack(
          children: [
            RefreshIndicator(
                onRefresh: _refreshMovies,
                child: TrendingList(
                    movies: _movies,
                    scrollController: _scrollController,
                    isLoadingMore: _isLoadingMore)),
            if (_showScrollTopButton)
              ScrollTopButton(scrollToTop: _scrollToTop)
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

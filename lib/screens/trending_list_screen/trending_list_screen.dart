import 'package:flutter/material.dart';

class TrendingListScreen extends StatelessWidget {
  const TrendingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trending List')),
      body: const Center(child: Text('Trending List Screen')),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/screens/home_screen/home_screen.dart';
import 'package:my_app/screens/movie_grid_list_screen/movie_list_screen.dart';
import 'package:my_app/styles/colors.dart';

import 'screens/search_screen/search_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/home': (context) => const HomeScreen(),
        '/movieList': (context) =>  const MovieListScreen(),
        '/search': (context) => const SearchScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
        // Đặt màu status bar
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: bgColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          MovieListScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.5), // Màu bóng
              spreadRadius: 2, // Kích thước bóng
              blurRadius: 5, // Độ mờ của bóng
              offset: const Offset(0, -4), // Định vị bóng
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: selectedItemColor, // Màu khi chọn
          unselectedItemColor: unselectedItemColor, // Màu khi không chọn
          backgroundColor: bgColor, // Màu nền
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie,
                  size: 35,
                ),
                label: 'Movies'),
          ],
        ),
      ),
    );
  }
}

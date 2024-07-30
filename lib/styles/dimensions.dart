import 'package:flutter/material.dart';

class AppDimensions {
  static late double screenHeight;
  static late double screenWidth;
  static late double aspectRatio;
  //screen size
  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    aspectRatio = size.aspectRatio;
  }

  //fontSize
  static double get fontSize20 => screenWidth * 20 / 340;

  //size box
  static double get sizedBox5 => screenWidth * 5 / 340;
  static double get sizedBox9 => screenWidth * 9 / 340;
  static double get dotSize => screenWidth * 10 / 340;
  static double get sizedBox14 => screenWidth * 14 / 340;
  static double get sizedBox16 => screenWidth * 16 / 340;
  static double get sizedBox18 => screenWidth * 18 / 340;
  static double get sizedBox29 => screenWidth * 29 / 340;

  static double get searchIconSize => screenWidth * 25 / 340;
  static double get gridItemWidth => screenWidth * 100 / 340;
  static double get gridItemHeight => screenWidth * 160 / 340;
  static double get listOfDaySize => screenWidth * 188 / 340;
  static double get pageViewWidth => screenWidth * 178 / 340;
  static double get pageViewHeight => screenWidth * 279 / 340;
  static double get isCurrentPageWidth => screenWidth * 231 / 340;
  static double get isCurrentPageHeight => screenWidth * 329 / 340;
}

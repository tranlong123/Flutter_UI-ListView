import 'package:flutter/material.dart';
import 'package:my_app/styles/dimensions.dart';

class ScrollTopButton extends StatelessWidget {
  final VoidCallback scrollToTop;
  const ScrollTopButton({super.key, required this.scrollToTop});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: AppDimensions.scrollTopIconLeft,
      child: GestureDetector(
        onTap: scrollToTop,
        child: SizedBox(
          width: AppDimensions.scrollTopIconWidth,
          height: AppDimensions.scrollTopIconHeight,
          child: Image.asset('assets/png/scrollTopIcon.png'),
        ),
      ),
    );
  }
}

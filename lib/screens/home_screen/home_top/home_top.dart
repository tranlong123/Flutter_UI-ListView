import 'package:flutter/material.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/app_bar_title.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    
    AppDimensions.init(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/trending'),
            child:  const AppBarTitle(),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/search'),
            child: Icon(Icons.search, size: AppDimensions.searchIconSize),
          ),
        ],
      ),
    );
  }
}

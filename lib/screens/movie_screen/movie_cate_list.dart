import 'package:flutter/material.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/cate_box.dart';

class MovieCateList extends StatelessWidget {
  const MovieCateList({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return SizedBox(
      width: AppDimensions.sizedBox188,
      child: Wrap(
        spacing: AppDimensions.sizedBox5, // khoảng cách chiều ngang
        runSpacing: AppDimensions
            .sizedBox11, // khoảng cách giữa các hàng theo chiều dọc
        children: const [
          CateBox(cate: 'Action'),
          CateBox(cate: 'Fantasy'),
          CateBox(cate: 'War'),
          CateBox(cate: 'Thriller'),
        ],
      ),
    );
  }
}

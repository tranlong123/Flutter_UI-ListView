import 'package:flutter/material.dart';
import 'package:my_app/styles/colors.dart';
import 'package:my_app/styles/dimensions.dart';
import 'package:my_app/widgets/custom_buttom.dart';

class WatchAndDownload extends StatelessWidget {
  const WatchAndDownload({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return SizedBox(
        width: AppDimensions.sizedBox188,
        child: Row(
          children: [
            CustomButtom(
              text: 'Watch',
              // ignore: avoid_print
              onPressed: () => print('Button pressed'),
              color: watchBt,
            ),
            CustomButtom(
              text: 'Download',
              // ignore: avoid_print
              onPressed: () => print('Button pressed'),
              color: downloadBt,
            )
          ],
        ));
  }
}

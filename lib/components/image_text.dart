import 'package:flutter/material.dart';
import 'package:novusagro_app/utils/colors.dart';

class ImageText extends StatelessWidget {
  const ImageText({Key? key, this.bgColor = KColors.PRIMARY}) : super(key: key);
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: bgColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'AB',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

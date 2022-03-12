import 'package:flutter/material.dart';
import 'package:novusagro_app/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onClick,
    required this.text,
    this.px = 8,
    this.py = 8,
  }) : super(key: key);
  final Function() onClick;
  final String text;
  final double px;
  final double py;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: py, horizontal: px),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: KColors.PRIMARY, width: .4),
        ),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key? key,
    required this.onClick,
    required this.text,
    this.color = KColors.PRIMARY,
    this.py = 8,
    this.textSize = 14,
    this.textColor = Colors.white,
  }) : super(key: key);
  final Function() onClick;
  final String text;
  final Color textColor;
  final Color color;
  final double py;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: py, horizontal: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            color: textColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants/text_helper.dart';

class ActionButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double height;
  final double width;
  final TextStyle textStyle;
  final double borderRadius; // Added radius property
  const ActionButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue, required this.height, required this.width, required this.textStyle, required this.borderRadius, // Default color is blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
      ),
    );
  }
}

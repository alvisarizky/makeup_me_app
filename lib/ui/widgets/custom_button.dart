import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final TextStyle titleColor;
  final Function() onPressed;
  final String title;
  final double width;

  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.titleColor,
    required this.title,
    this.width = double.infinity, 
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45,
      margin: EdgeInsets.only(
        top: 12,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
        child: Text(
          title,
          style: titleColor,
        ),
      ),
    );
  }
}

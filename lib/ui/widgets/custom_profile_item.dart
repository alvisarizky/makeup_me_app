import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';

class CustomProfileItem extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const CustomProfileItem({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_arrow_right.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

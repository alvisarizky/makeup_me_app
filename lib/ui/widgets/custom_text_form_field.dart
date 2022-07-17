import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final int maxLines;
  final String title;
  final String hintText;
  final bool obsecureText;

  const CustomTextFormField({
    required this.title,
    required this.hintText,
    this.obsecureText = false,
    Key? key, this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            maxLines: maxLines,
            cursorColor: kBlackColor,
            obscureText: obsecureText,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: kBlackColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: kGreenColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

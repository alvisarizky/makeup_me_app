import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';

class CustomTestimoniItem extends StatelessWidget {
  const CustomTestimoniItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 140,
            margin: EdgeInsets.only(
              bottom: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/img_mua_testimoni.png',
                ),
              ),
            ),
          ),
          Text(
            'Abdi Gunawan',
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 4,
            ),
            child: Text(
              'Komentar : terimakasih kak suka banget sama produknya😘❤️',
              style: blackTextStyle.copyWith(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

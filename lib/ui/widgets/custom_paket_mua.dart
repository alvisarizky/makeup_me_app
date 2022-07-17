import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/detail_package_page.dart';

class CustomPaketMUA extends StatelessWidget {
  final String packageName;
  final String packagePrice;
  final String imgUrl;

  const CustomPaketMUA({
    Key? key,
    required this.packageName,
    required this.packagePrice,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPackagePage(),
          ),
        );
      },
      child: Container(
        width: 145,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imgUrl,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              packageName,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                color: Color(0xff1E2237).withOpacity(0.9),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              packagePrice,
              style: greyTextStyle.copyWith(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

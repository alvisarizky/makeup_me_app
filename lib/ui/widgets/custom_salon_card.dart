import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/detail_page.dart';

class CustomSalonCard extends StatelessWidget {
  final String salonName;
  final String salonAddress;
  final String imgUrl;
  final EdgeInsets margin;
  final double width;
  final double height;

  const CustomSalonCard({
    Key? key,
    required this.salonName,
    required this.salonAddress,
    required this.imgUrl,
    this.margin = EdgeInsets.zero,
    this.width = 180,
    this.height = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget iconStar() {
      return Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/icon_star.png',
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0xffA2ADB1).withOpacity(0.5),
              blurRadius: 4,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.only(
                bottom: 11,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imgUrl,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    salonName,
                    style: blackTextStyle.copyWith(
                      color: Color(0xff082431),
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    salonAddress,
                    style: blackTextStyle.copyWith(
                      color: Color(0xff082431),
                      fontSize: 10,
                      fontWeight: light,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          iconStar(),
                          iconStar(),
                          iconStar(),
                          iconStar(),
                          iconStar(),
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '(4016)',
                        style: greyTextStyle.copyWith(
                          color: Color(0xffA2ADB1),
                          fontSize: 10,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

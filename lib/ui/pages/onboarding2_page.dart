import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';

class SecondOnBoardingPage extends StatelessWidget {
  const SecondOnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_onboarding2.png',
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Cari MUA',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'sering kesulitan saat cari mua yang\ncocok denganmu ? kami solusinya',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              margin: EdgeInsets.only(
                top: 100,
                bottom: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
                    },
                    child: Text(
                      'Skip',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffC4C4C4),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kBlackColor,
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffC4C4C4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamedAndRemoveUntil(context, '/third', (route) => false);
                    },
                    child: Text(
                      'Next',
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

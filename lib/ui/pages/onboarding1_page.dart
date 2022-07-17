import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';

class FirstOnBoardingPage extends StatelessWidget {
  const FirstOnBoardingPage({Key? key}) : super(key: key);

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
                    'assets/img_onboarding1.png',
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Selamat Datang',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Mulai menjelajah dan mencari\nmakeup artist yang cocok denganmu',
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
                      Navigator.pushNamedAndRemoveUntil(context, '/second', (route) => false);
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

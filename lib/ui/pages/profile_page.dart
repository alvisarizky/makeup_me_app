import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makeup_me_app/cubit/page_cubit.dart';
import 'package:makeup_me_app/cubit/profile_navigator_cubit.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/about_page.dart';
import 'package:makeup_me_app/ui/pages/app_rating_page.dart';
import 'package:makeup_me_app/ui/pages/criticism_and_suggestion_page.dart';
import 'package:makeup_me_app/ui/pages/edit_address_page.dart';
import 'package:makeup_me_app/ui/pages/edit_password_page.dart';
import 'package:makeup_me_app/ui/pages/edit_profile_page.dart';
import 'package:makeup_me_app/ui/pages/question_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_profile_item.dart';
import 'package:makeup_me_app/ui/widgets/custom_profile_navigation_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget profileHeader() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 28,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Container(
              width: 110,
              height: 110,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_border.png',
                  ),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/img_profile.png',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Adella Dewi Cahayani',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'adelladewicahayani@gmail.com',
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget profileBody() {
      Widget buildContent(int currentIndex) {
        switch (currentIndex) {
          case 0:
            return Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                children: [
                  CustomProfileItem(
                    title: 'Edit Profil',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfilePage(),
                        ),
                      );
                    },
                  ),
                  CustomProfileItem(
                    title: 'Edit Alamat',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditAddressPage(),
                        ),
                      );
                    },
                  ),
                  CustomProfileItem(
                    title: 'Edit Password',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditPasswordPage(),
                        ),
                      );
                    },
                  ),
                  CustomProfileItem(
                    title: 'Log Out',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/sign-in',
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
            );
          case 1:
            return Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                children: [
                  CustomProfileItem(
                    title: 'Tentang Kami',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutPage(),
                        ),
                      );
                    },
                  ),
                  CustomProfileItem(
                    title: 'Rating Aplikasi',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AppRatingPage(),
                        ),
                      );
                    },
                  ),
                  CustomProfileItem(
                    title: 'Ajukan Pertanyaan',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuestionPage(),
                        ),
                      );
                    },
                  ),
                  CustomProfileItem(
                    title: 'Kritik Dan Saran',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CriticismAndSuggestionPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          default:
            return Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                children: [
                  CustomProfileItem(
                    title: 'Edit Profil',
                    onPressed: () {},
                  ),
                  CustomProfileItem(
                    title: 'Edit Alamat',
                    onPressed: () {},
                  ),
                  CustomProfileItem(
                    title: 'Edit Password',
                    onPressed: () {},
                  ),
                  CustomProfileItem(
                    title: 'Log Out',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/sign-in',
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
            );
        }
      }

      Widget profileNavigation() {
        return Container(
          width: double.infinity,
          height: 36,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Row(
            children: [
              CustomProfileNavigationItem(
                index: 0,
                title: 'Account',
              ),
              SizedBox(
                width: 28,
              ),
              CustomProfileNavigationItem(
                index: 1,
                title: 'Makeup.Me',
              ),
            ],
          ),
        );
      }

      return BlocBuilder<ProfileNavigatorCubit, int>(
        builder: (context, currentIndex) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 24,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
            ),
            child: Column(
              children: [
                profileNavigation(),
                Container(
                  width: double.infinity,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                  ),
                ),
                buildContent(currentIndex),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          profileHeader(),
          profileBody(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makeup_me_app/cubit/page_cubit.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/home_page.dart';
import 'package:makeup_me_app/ui/pages/profile_page.dart';
import 'package:makeup_me_app/ui/pages/transaction_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_home.png',
                index: 0,
                imgUrlSelected: 'assets/icon_home1.png',
              ),
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_order1.png',
                index: 1,
                imgUrlSelected: 'assets/icon_order.png',
              ),
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_profile1.png',
                index: 2,
                imgUrlSelected: 'assets/icon_profile.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: SafeArea(
            child: Stack(
              children: [
                buildContent(currentIndex),
                bottomNavigation(),
              ],
            ),
          ),
        );
      },
    );
  }
}

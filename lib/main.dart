import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makeup_me_app/cubit/mua_detail_cubit.dart';
import 'package:makeup_me_app/cubit/page_cubit.dart';
import 'package:makeup_me_app/cubit/profile_navigator_cubit.dart';
import 'package:makeup_me_app/cubit/transaction_category_cubit.dart';
import 'package:makeup_me_app/ui/pages/main_page.dart';
import 'package:makeup_me_app/ui/pages/onboarding1_page.dart';
import 'package:makeup_me_app/ui/pages/onboarding2_page.dart';
import 'package:makeup_me_app/ui/pages/onboarding3_page.dart';
import 'package:makeup_me_app/ui/pages/sign_in_page.dart';
import 'package:makeup_me_app/ui/pages/splash_page.dart';
import 'package:makeup_me_app/ui/pages/success_check_out_page.dart';
import 'package:makeup_me_app/ui/pages/success_sign_up_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => ProfileNavigatorCubit(),
        ),
        BlocProvider(
          create: (context) => MuaDetailCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCategoryCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/first': (context) => FirstOnBoardingPage(),
          '/second': (context) => SecondOnBoardingPage(),
          '/third': (context) => ThirdOnBoardingPage(),
          '/sign-in': (context) => SignInPage(),
          '/success-sign-up': (context) => SuccessSignUpPage(),
          '/main': (context) => MainPage(),
          '/success-booking': (context) => SuccessCheckOutPage(),
        },
      ),
    );
  }
}

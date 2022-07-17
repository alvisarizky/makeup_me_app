import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makeup_me_app/cubit/page_cubit.dart';
import 'package:makeup_me_app/cubit/profile_navigator_cubit.dart';
import 'package:makeup_me_app/shared/theme.dart';

class CustomProfileNavigationItem extends StatelessWidget {
  final String title;
  final int index;
  const CustomProfileNavigationItem({Key? key, required this.index, required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.read<ProfileNavigatorCubit>().setDetailProfile(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: context.read<ProfileNavigatorCubit>().state == index ? medium : regular,
              color: context.read<ProfileNavigatorCubit>().state == index ? kBlackColor : kGreyColor,
            ),
          ),
          Container(
            width: 40,
            height: 3,
            decoration: BoxDecoration(
              color: context.read<ProfileNavigatorCubit>().state == index ? kBlackColor : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makeup_me_app/cubit/mua_detail_cubit.dart';
import 'package:makeup_me_app/shared/theme.dart';

class CustomNavMuaDetailItem extends StatelessWidget {
  final String title;
  final int index;

  const CustomNavMuaDetailItem({
    Key? key,
    required this.title,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MuaDetailCubit>().setMuaDetail(index);
      },
      child: Container(
        child: Column(
          children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: context.read<MuaDetailCubit>().state == index ? medium : regular,
                color: context.read<MuaDetailCubit>().state == index ? kBlackColor : kGreyColor,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 40,
              height: 3,
              decoration: BoxDecoration(
                color: context.read<MuaDetailCubit>().state == index ? kBlackColor : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

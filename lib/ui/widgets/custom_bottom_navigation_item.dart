import 'package:flutter/material.dart';
import 'package:makeup_me_app/cubit/page_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imgUrl;
  final String imgUrlSelected;

  const CustomBottomNavigationItem({
    Key? key,
    required this.imgUrl,
    required this.index,
    required this.imgUrlSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              context.read<PageCubit>().state == index ? imgUrl : imgUrlSelected,
            ),
          ),
        ),
      ),
    );
  }
}

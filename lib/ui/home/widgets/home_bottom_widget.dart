import 'package:flutter/material.dart';
import 'package:scrollable_bars/constants/app_colors.dart';

class HomeBottomWidget extends StatelessWidget {
  final String name;
  final String time;
  const HomeBottomWidget({super.key, required this.name, required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(color: AppColors.white ),
        ),
        Text(
          time,
          style: TextStyle(color: AppColors.white),
        ),
      ],
    );
  }
}

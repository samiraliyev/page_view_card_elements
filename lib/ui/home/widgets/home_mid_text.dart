import 'package:flutter/material.dart';
import 'package:scrollable_bars/constants/app_colors.dart';

class HomeMidText extends StatelessWidget {
  final String title;
  const HomeMidText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

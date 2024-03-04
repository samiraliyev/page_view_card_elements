import 'package:flutter/material.dart';
import 'package:scrollable_bars/constants/app_colors.dart';

class HomeTopWidget extends StatelessWidget {
  final String text;
  final Color color;

  const HomeTopWidget({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 100),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: color,
              ),
            ),
          ),
        ),
        Icon(
          Icons.save_outlined,
          color: AppColors.white,
        )
      ],
    );
  }
}

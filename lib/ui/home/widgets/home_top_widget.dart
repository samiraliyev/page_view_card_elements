import 'package:flutter/material.dart';
import 'package:scrollable_bars/constants/app_colors.dart';

import '../../../constants/app_path.dart';

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
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.white,
            minimumSize: const Size.square(25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: () {},
          child: Text(text),
        ),
        const Spacer(),
        Image.asset(
          width: 50.0,
          height: 50.0,
          AppPath.saveIcon,
          color: AppColors.white,
        ),
      ],
    );
  }
}

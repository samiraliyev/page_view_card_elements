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
        const Icon(
          Icons.save_outlined,
          color: AppColors.white,
        )
      ],
    );
  }
}

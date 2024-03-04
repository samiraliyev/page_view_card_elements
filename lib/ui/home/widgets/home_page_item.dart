import 'package:flutter/material.dart';
import 'package:scrollable_bars/constants/app_padding.dart';
import 'package:scrollable_bars/ui/home/widgets/home_bottom_widget.dart';
import 'package:scrollable_bars/ui/home/widgets/home_mid_text.dart';
import 'package:scrollable_bars/ui/home/widgets/home_top_widget.dart';

class HomePageItem extends StatelessWidget {
  final String subtitle;
  final String title;
  final Color color;
  final String name;
  final String time;

  const HomePageItem({
    super.key,
    required this.subtitle,
    required this.color,
    required this.title,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: AppPaddings.all24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: color,
      ),
      child: Padding(
        padding: AppPaddings.all24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTopWidget(
              text: subtitle,
              color: color,
            ),
            const SizedBox(
              height: 10,
            ),
            HomeMidText(
              title: title,
            ),
            const SizedBox(
              height: 10,
            ),
            HomeBottomWidget(
              name: name,
              time: time,
            )
          ],
        ),
      ),
    );
  }
}

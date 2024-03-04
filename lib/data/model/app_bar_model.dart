import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scrollable_bars/constants/app_colors.dart';

import '../../constants/app_strings.dart';

class TopModel {
  final String subtitle;
  final String title;
  final String name;
  final String time;
  final Color color;

  TopModel({
    required this.subtitle,
    required this.title,
    required this.name,
    required this.time,
    required this.color,
  });

  static List<TopModel> topModel = [
    TopModel(
      subtitle: AppString.subtitle,
      title: AppString.title,
      name: AppString.name,
      time: AppString.time,
      color: AppColors.purple,
    ),
    TopModel(
      subtitle: AppString.subtitle2,
      title: AppString.title2,
      name: AppString.name2,
      time: AppString.time2,
      color: AppColors.yellow,
    ),
  ];
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scrollable_bars/data/model/app_bar_model.dart';
import 'package:scrollable_bars/ui/home/widgets/home_page_item.dart';

class HomePageViewBuilder extends StatelessWidget {
  const HomePageViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<TopModel> topModel = TopModel.topModel;
    return Row(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 0.55,
            child: PageView.builder(
              itemCount: topModel.length,
              itemBuilder: (context, index) {
                final datas = topModel[index];
                return HomePageItem(
                  subtitle: datas.subtitle,
                  color: datas.color,
                  title: datas.title,
                  name: datas.name,
                  time: datas.time,
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

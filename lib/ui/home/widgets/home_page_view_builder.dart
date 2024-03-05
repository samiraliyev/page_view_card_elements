import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scrollable_bars/data/model/app_bar_model.dart';
import 'package:scrollable_bars/ui/home/widgets/home_page_item.dart';

class HomePageViewBuilder extends StatefulWidget {
  const HomePageViewBuilder({super.key});

  @override
  State<HomePageViewBuilder> createState() => _HomePageViewBuilderState();
}

class _HomePageViewBuilderState extends State<HomePageViewBuilder> {
  late PageController _pageController;
  final int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.83,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<TopModel> topModel = TopModel.topModel;
    return Row(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: topModel.length,
            // physics: const ClampingScrollPhysics(),
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
        )
      ],
    );
  }
}

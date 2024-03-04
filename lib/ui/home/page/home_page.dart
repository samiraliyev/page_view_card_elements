import 'package:flutter/material.dart';
import 'package:scrollable_bars/ui/home/widgets/home_page_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 230,
          child:  HomePageViewBuilder()
        ),
      ),
    );
  }
}

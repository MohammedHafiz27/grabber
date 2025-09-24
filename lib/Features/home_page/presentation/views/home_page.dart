import 'package:flutter/material.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/category_item_list_builder.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/custom_app_bar.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/my_carouse_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: MyCarouselSlider()),
          SliverToBoxAdapter(child: CategoryItemListBuilder()),
        ],
      ),
    );
  }
}

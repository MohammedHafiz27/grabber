import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/Features/home_page/presentation/view%20models/cart_cubit/cart_cubit.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/category_item_list_builder.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/custom_app_bar.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/fruits_header.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/fruits_item_list_builder.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/my_carouse_slider.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/pop_up_cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocProvider(
        create: (context) => CartCubit(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: MyCarouselSlider()),
                  SliverToBoxAdapter(child: CategoryItemListBuilder()),
                  SliverToBoxAdapter(child: FruitsHeader()),
                  SliverToBoxAdapter(child: FruitsItemListBuilder()),
                ],
              ),
              Positioned(bottom: 100, child: PopUpCart()),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/Features/home_page/data/models/fruits_model.dart';
import 'package:grabber/Features/home_page/presentation/view%20models/cart_cubit/cart_cubit.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/cart_item.dart';

class CartItemBuilder extends StatelessWidget {
  const CartItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, List<FruitsModel>>(
      builder: (context, state) {
        return ListView.builder(
          reverse: true,
          itemExtent: 55,
          scrollDirection: Axis.horizontal,
          itemCount: context.read<CartCubit>().showCart().length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: CartItem(fruitsModel: context.read<CartCubit>().showCart()[index]),
          ),
        );
      },
    );
  }
}

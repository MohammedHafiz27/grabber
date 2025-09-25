
import 'package:flutter/material.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/cart_item.dart';

class CartItemBuilder extends StatelessWidget {
  const CartItemBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemExtent: 55,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) =>
          Padding(padding: const EdgeInsets.symmetric(horizontal: 2), child: CartItem()),
    );
  }
}

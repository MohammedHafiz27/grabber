import 'package:flutter/material.dart';
import 'package:grabber/Core/utils/assets.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 255, 255, 255)),
      child: Image.asset(Assets.imagesBanana, height: 24),
    );
  }
}

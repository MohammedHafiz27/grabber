import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/Features/home_page/data/models/fruits_model.dart';
import 'package:grabber/Features/home_page/presentation/view%20models/cart_cubit/cart_cubit.dart';

class CartItem extends StatelessWidget {
  final FruitsModel fruitsModel;
  const CartItem({super.key, required this.fruitsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 255, 255, 255)),
          child: Image.asset(fruitsModel.image, height: 200),
        ),
        Positioned(
          right: 2,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              border: Border.all(color: Colors.white, width: 1.5),
            ),
            child: Center(
              child: Text(
                context.read<CartCubit>().getItemCount(fruitsModel).toString(),
                style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

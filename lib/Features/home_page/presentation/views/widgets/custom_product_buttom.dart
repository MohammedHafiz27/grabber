import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/Features/home_page/data/models/fruits_model.dart';
import 'package:grabber/Features/home_page/presentation/view%20models/cart_cubit/cart_cubit.dart';

class CustomProductButton extends StatelessWidget {
  const CustomProductButton({super.key, required this.fruitsModel});

  final FruitsModel fruitsModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, List<FruitsModel>>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
            child: context.read<CartCubit>().getItemCount(fruitsModel) > 0
                ? Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<CartCubit>().removeFromCart(fruitsModel);
                        },
                        icon: Icon(Icons.delete_forever_rounded),
                      ),
                      Text(context.read<CartCubit>().getItemCount(fruitsModel).toString()),
                      IconButton(
                        onPressed: () {
                          context.read<CartCubit>().addToCart(fruitsModel);
                        },
                        icon: Icon(Icons.add),
                      ),
                    ],
                  )
                : IconButton(
                    onPressed: () {
                      context.read<CartCubit>().addToCart(fruitsModel);
                    },
                    icon: Icon(Icons.add),
                  ),
          ),
        );
      },
    );
  }
}

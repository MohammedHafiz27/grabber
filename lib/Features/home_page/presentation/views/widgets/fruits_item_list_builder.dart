import 'package:flutter/widgets.dart';
import 'package:grabber/Core/utils/assets.dart' show Assets;
import 'package:grabber/Features/home_page/data/models/fruits_model.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/fruits_item.dart';

class FruitsItemListBuilder extends StatelessWidget {
  const FruitsItemListBuilder({super.key});
  static final List<FruitsModel> fruits = [
    FruitsModel(name: "Banana", image: Assets.imagesBanana, price: r"$3.99", rate: 4.8, rateCount: 287),
    FruitsModel(name: "Pepper", image: Assets.imagesPapper, price: r"$2.99", rate: 4.5, rateCount: 321),
    FruitsModel(name: "Orange", image: Assets.imagesOrange, price: r"$3.99", rate: 4.7, rateCount: 263),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 170 / 115,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: fruits.length,
        itemBuilder: (context, index) => FruitsItem(fruitsModel: fruits[index]),
      ),
    );
  }
}

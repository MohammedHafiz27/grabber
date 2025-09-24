import 'package:flutter/widgets.dart';
import 'package:grabber/Core/utils/assets.dart';
import 'package:grabber/Features/home_page/data/models/category_model.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/category_item.dart';

class CategoryItemListBuilder extends StatelessWidget {
  const CategoryItemListBuilder({super.key});
  static final List<CategoryModel> categoryList = [
    CategoryModel(name: "Fruits", image: Assets.imagesFruits),
    CategoryModel(name: "Milk & egg", image: Assets.imagesEggMilk),
    CategoryModel(name: "Beverages", image: Assets.imagesBeverages),
    CategoryModel(name: "Laundry", image: Assets.imagesLaundry),
    CategoryModel(name: "Vegetables", image: Assets.imagesVegetables),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CategoryItem(name: categoryList[index].name, image: categoryList[index].image),
        ),
      ),
    );
  }
}

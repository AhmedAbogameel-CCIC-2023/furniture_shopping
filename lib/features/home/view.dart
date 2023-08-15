import 'package:flutter/material.dart';
import 'package:furniture_shopping/features/home/controller.dart';
import 'package:furniture_shopping/widgets/app_app_bar.dart';

import '../../core/utils.dart';
import '../../widgets/app/category_card.dart';
import '../../widgets/app/product_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = HomeController();

  @override
  void initState() {
    controller.selectedCategory = controller.categories.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        upperTitle: "Make home",
        title: "Beautiful",
        leading: Image.asset(Utils.getPNGAssetPath('search')),
        trailing: Image.asset(Utils.getPNGAssetPath('cart')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 68,
              child: ListView.builder(
                itemCount: controller.categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final category = controller.categories[index];
                  return CategoryCard(
                    title: category.title,
                    image: category.image,
                    isSelected: controller.selectedCategory == category,
                    onTap: () {
                      controller.selectedCategory = category;
                      setState(() {});
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 157 / 253,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return ProductCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

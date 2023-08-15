import 'package:flutter/material.dart';
import 'package:furniture_shopping/core/app_colors/app_colors.dart';
import 'package:furniture_shopping/widgets/app_text.dart';

import '../../core/utils.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                Utils.getPNGAssetPath('product_example'),
                width: double.infinity,
                height: 210,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 12,
              right: 12,
              child: UnconstrainedBox(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(Utils.getPNGAssetPath('shopping_bag')),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.primary.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        AppText(
          title: 'Minimal Stand',
          color: AppColors.darkGray,
          maxLines: 1,
        ),
        SizedBox(height: 5),
        AppText(
          title: '\$ 25.00',
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}

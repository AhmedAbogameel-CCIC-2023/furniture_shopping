import 'package:flutter/material.dart';

import '../../core/app_colors/app_colors.dart';
import '../../core/utils.dart';
import '../app_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.image,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String image;
  final String title;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 44,
              height: 44,
              child: Image.asset(
                Utils.getPNGAssetPath(image),
                color: isSelected ? AppColors.white : AppColors.darkGray,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.gray,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(height: 5),
          AppText(
            title: title,
            fontWeight: FontWeight.w600,
            color: isSelected ? AppColors.primary : AppColors.darkGray,
          ),
        ],
      ),
    );
  }
}

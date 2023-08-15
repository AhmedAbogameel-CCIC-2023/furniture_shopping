import 'package:flutter/material.dart';

import '../core/app_colors/app_colors.dart';
import 'app_text.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    this.title,
    this.upperTitle,
    this.leading,
    this.trailing,
  });

  final String? title;
  final String? upperTitle;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.darkGray,
      ),
      leading: leading,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (upperTitle != null)
            AppText(
              title: upperTitle ?? "",
              fontSize: 16,
              color: AppColors.darkGray,
            ),
          if (upperTitle != null && title != null) SizedBox(height: 4),
          if (title != null)
            AppText(
              title: title ?? "",
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
        ],
      ),
      actions: [
        if (trailing != null) trailing!,
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

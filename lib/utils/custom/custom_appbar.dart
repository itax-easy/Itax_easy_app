import 'package:flutter/material.dart';
import 'package:itax_easy_app/gen/assets.gen.dart';
import 'package:itax_easy_app/utils/constants/app_colors.dart';
import 'package:itax_easy_app/utils/constants/app_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final VoidCallback? onShare;
  final VoidCallback? onDownload;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onBack,
    this.onShare,
    this.onDownload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // disables default back
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, color: AppColors.white),
        onPressed: onBack ?? () => Navigator.pop(context),
      ),
      title: Text(
        title,
        style: AppTextStyles.body16.copyWith(color: AppColors.white),
      ),

      actions: [
        IconButton(
          icon: SvgPicture.asset(
            Assets.icons.materialSymbolsDownload,
            color: AppColors.white,
            height: 24,
          ),
          onPressed: onShare,
        ),
        IconButton(
          icon: SvgPicture.asset(
            Assets.icons.materialSymbolsShare,
            color: AppColors.white,
            height: 24,
          ),
          onPressed: onDownload,
        ),
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.blueToGreenGradient,
        ),
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

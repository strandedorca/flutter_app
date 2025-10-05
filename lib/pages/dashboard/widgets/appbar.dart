import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/decorations.dart';
import 'package:flutter_application_1/theme/dimens.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  static const double _appBarHeight = 80;
  static const String _welcomeText = 'Welcome, ';

  const DashboardAppBar({super.key, this.userName = "Noah"});

  @override
  Size get preferredSize => Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppDimens.horizontalAppPadding),
      height: preferredSize.height,
      decoration: AppDecorations.bottomBorderedBoxDecoration(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: AppDimens.spacingMedium,
        children: [
          Icon(
            Icons.account_circle,
            size: AppDimens.iconLarge,
            color: colors.onPrimary,
            semanticLabel: 'User Avatar',
          ),
          Text.rich(
            TextSpan(
              text: _welcomeText,
              style: TextStyle(fontSize: 16, color: colors.onPrimary),
              children: [
                TextSpan(
                  text: '$userName!',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: AppDimens.iconLarge,
            width: AppDimens.iconLarge,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: colors.onPrimary,
                width: AppDimens.borderWidthMedium,
              ),
            ),
            child: Icon(
              Icons.settings,
              size: AppDimens.iconMedium,
              color: colors.onPrimary,
              semanticLabel: 'Settings',
            ),
          ),
        ],
      ),
    );
  }
}

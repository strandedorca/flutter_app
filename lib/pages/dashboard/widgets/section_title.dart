import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  static const String _seeAllText = 'See All';
  static const double _topPadding = 28.0;
  static const double _bottomPadding = 24.0;

  // Constructor
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.only(top: _topPadding, bottom: _bottomPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: textTheme.titleMedium),
          Text(
            _seeAllText,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

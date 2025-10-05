import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/dimens.dart';

class AppDecorations {
  // Bottom bordered decoration for containers
  static BoxDecoration bottomBorderedBoxDecoration(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: colors.outline,
          width: AppDimens.borderWidthMedium,
        ),
      ),
    );
  }

  // Rounded bordered decoration for containers
  static BoxDecoration roundedBorderedBoxDecoration(
    BuildContext context,
    double radius,
  ) {
    final colors = Theme.of(context).colorScheme;

    return BoxDecoration(
      border: Border.all(
        color: colors.outline,
        width: AppDimens.borderWidthMedium,
      ),
      borderRadius: BorderRadius.circular(radius),
    );
  }
}

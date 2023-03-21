import 'package:flutter/material.dart';
import 'package:quote_generator/theme/theme.dart';

class TextSettingItemContainer extends StatelessWidget {
  const TextSettingItemContainer({
    super.key,
    required this.child,
    this.onTap,
    required this.isSelected,
  });

  final Widget child;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = isSelected ? colorScheme.secondary : colorScheme.onBackground;
    return InkWell(
      onTap: onTap,
      borderRadius: Dimensions.kBorderRadiusAllMedium,
      child: Container(
        padding: Dimensions.kPaddingAllMedium,
        decoration: BoxDecoration(
          borderRadius: Dimensions.kBorderRadiusAllSmallest,
          color: color,
        ),
        child: child,
      ),
    );
  }
}

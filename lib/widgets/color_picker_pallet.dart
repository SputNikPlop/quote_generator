import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:quote_generator/translations/translations.dart';
import 'package:quote_generator/theme/theme.dart';

class ColorPickerPallet extends StatelessWidget {
  const ColorPickerPallet({
    super.key,
    required this.selectedColor,
    required this.onColorChanged,
  });

  final Color selectedColor;
  final Function(Color color) onColorChanged;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 1,
        child: ColorPicker(
          color: selectedColor,
          onColorChanged: (Color color) => onColorChanged(color),
          width: Dimensions.colorPalletWidth,
          height: Dimensions.colorPalletHight,
          borderRadius: Dimensions.colorPalletBorder,
          heading: Text(
            context.l10n.background_color,
            style: textTheme.headlineSmall,
          ),
          subheading: Text(
            context.l10n.select_color_shade,
            style: textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}

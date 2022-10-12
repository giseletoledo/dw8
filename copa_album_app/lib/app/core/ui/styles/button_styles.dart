import 'package:copa_album_app/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

import 'text_styles.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  // Avoid create more than one instance
  ButtonStyles._();

//i de instance
  static ButtonStyles get i {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.i.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle:
          TextStyles.i.textSecondaryFontExtraBold.copyWith(fontSize: 14));

  ButtonStyle get yellowOutlineButton => OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(color: ColorsApp.i.yellow),
      textStyle:
          TextStyles.i.textSecondaryFontExtraBold.copyWith(fontSize: 14));

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.i.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
          fontSize: 14,
        ),
      );

  ButtonStyle get primaryOutlineButton => OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(color: ColorsApp.i.primary),
      textStyle:
          TextStyles.i.textSecondaryFontExtraBold.copyWith(fontSize: 14));
}

extension ButtonStylesExtensions on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.i;
}

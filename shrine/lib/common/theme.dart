import 'package:flutter/material.dart';

import '../colors/colors.dart';
final ThemeData _kSherinTheme =_buildShrineTheme();
ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePink100,
      onPrimary: kShrineBrown900,
      secondary: kShrineBrown900,
      error: kShrineErrorRed,
     ),
    // TODO: Add the text themes (103)
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrinePink100,
    ),
    // TODO: Decorate the inputs (103)
  inputDecorationTheme: const InputDecorationTheme(
  border: OutlineInputBorder(),
  ) );
}
TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
    headlineSmall: base.headlineSmall!.copyWith(
      fontWeight: FontWeight.w500,
    ),
    titleLarge: base.titleLarge!.copyWith(
      fontSize: 18.0,
    ),
    bodySmall: base.bodySmall!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodyLarge: base.bodyLarge!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  )
      .apply(
    fontFamily: 'Rubik',
    displayColor: kShrineBrown900,
    bodyColor: kShrineBrown900,
  );
}
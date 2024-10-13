

import 'package:flutter/material.dart';

import 'package:store_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:store_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:store_app/utils/theme/custom_themes/chek_box_theme.dart';
import 'package:store_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:store_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:store_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:store_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:store_app/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      
      
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      chipTheme: TChipTheme.lightChipTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
  );
  static ThemeData darkTheme = ThemeData(
        brightness: Brightness.dark,
      
      useMaterial3: true,
      fontFamily: 'Poppins',
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: TChipTheme.darkChipTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
  );

}
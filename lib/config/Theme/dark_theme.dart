import 'package:annonify/config/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: ThemeColors.primaryColor,
  iconTheme: const IconThemeData(color: ThemeColors.textHeading),
  fontFamily:
      GoogleFonts.chakraPetch(color: ThemeColors.textHeading).fontFamily,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      color: ThemeColors.textHeading,
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      color: ThemeColors.textSubHeading,
    ),
    displaySmall: TextStyle(
      fontSize: 14,
      color: ThemeColors.secondaryTextColor,
    ),
    titleLarge: TextStyle(
      fontSize: 28,
      color: ThemeColors.accentColor,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      color: ThemeColors.textHeading,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      color: ThemeColors.accentColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: ThemeColors.textHeading,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      color: ThemeColors.textSubHeading,
    ),
  ),
  appBarTheme: const AppBarTheme(
    color: ThemeColors.primaryColor,
    centerTitle: true,
    titleTextStyle: TextStyle(color: ThemeColors.textHeading),
  ),
  listTileTheme: const ListTileThemeData(
    selectedColor: ThemeColors.selectedColor,
    selectedTileColor: ThemeColors.selectedColor,
    titleTextStyle: TextStyle(
      color: ThemeColors.textHeading,
      fontSize: 16,
    ),
    subtitleTextStyle: TextStyle(
      color: ThemeColors.textSubHeading,
      fontSize: 14,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
    hintStyle: TextStyle(
      fontSize: 14,
      color: ThemeColors.textSubHeading,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: ThemeColors.textHeading),
    ),
    suffixIconColor: ThemeColors.textSubHeading,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(ThemeColors.accentColor),
      foregroundColor: const WidgetStatePropertyAll(ThemeColors.primaryColor),
      textStyle: WidgetStatePropertyAll(TextStyle(
        fontSize: 16,
        color: ThemeColors.primaryColor,
        fontWeight: FontWeight.bold,
        fontFamily:
            GoogleFonts.chakraPetch(color: ThemeColors.textHeading).fontFamily,
      )),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(ThemeColors.accentColor),
      textStyle: WidgetStatePropertyAll(TextStyle(
        fontSize: 16,
        color: ThemeColors.accentColor,
        fontWeight: FontWeight.w600,
        fontFamily:
            GoogleFonts.chakraPetch(color: ThemeColors.textHeading).fontFamily,
      )),
    ),
  ),
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll(ThemeColors.accentColor),
    ),
  ),
);

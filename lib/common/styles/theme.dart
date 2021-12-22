import 'package:my_food/common/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData tdMain(BuildContext context) => ThemeData(
      primaryColor: hPrimaryColor,
      primaryColorDark: hPrimaryDarkColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: hSecondColor),
      textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(color: Colors.grey[400]!),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(color: Colors.red[800]!),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(color: Colors.red[800]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(width: 1, color: hPrimaryColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
      ),
    );

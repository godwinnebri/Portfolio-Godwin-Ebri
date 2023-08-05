import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  // static colors
  static const Color _darkBackgroundColor = Color(0xff1D1D25);
  static const Color _darkContainerColor = Color(0xff161B2F);
  static const Color _darkPrimaryColor = Color(0xff64B6F2);
  static const Color _darkOnPrimaryColor = Color(0xff54545A);
  static const Color _textColor1 = Colors.white;
  static const Color _textColor2 = Color(0xff98989C);
  static const Color _appbarColorDark = Color(0xff1D1D25);
  static const Color _white = Colors.white;
  static const Color _black = Colors.black;

  static const Color _iconColor = Colors.white;

  static const Color _accentColor = Color.fromRGBO(74, 217, 217, 1);

  // display text
  static final TextStyle _displayLarge = GoogleFonts.syne(
    textStyle: const TextStyle(
      color: _textColor1,
      fontSize: 64,
      fontWeight: FontWeight.bold,
    ),
  );

  static final TextStyle _displayMedium = GoogleFonts.syne(
    textStyle: const TextStyle(
      color: _textColor1,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
  );

  static final TextStyle _displaySmall = GoogleFonts.syne(
    textStyle: const TextStyle(
      color: _textColor1,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );

//title text
  static final TextStyle _titleLarge = GoogleFonts.syne(
    textStyle: const TextStyle(
      color: _textColor1,
      fontWeight: FontWeight.normal,
      fontSize: 16,
    ),
  );

  static final TextStyle _titleMedium = GoogleFonts.syne(
    textStyle: const TextStyle(
      color: _textColor1,
      fontWeight: FontWeight.normal,
      fontSize: 12,
    ),
  );

  static final TextStyle _titleSmall = GoogleFonts.syne(
    textStyle: const TextStyle(
      color: _textColor1,
      fontWeight: FontWeight.normal,
      fontSize: 10,
    ),
  );

//body
  //     static final TextStyle _bodyLarge = GoogleFonts.syne(
  //   textStyle: const TextStyle(
  //     color: _lightTextColorPrimary,
  //     fontWeight: FontWeight.w300,
  //     fontSize: 16,
  //   ),
  // );

  static final TextTheme _textTheme = TextTheme(
    displayLarge: _displayLarge,
    displayMedium: _displayMedium,
    displaySmall: _displaySmall,

    titleLarge: _titleLarge,
    titleMedium: _titleMedium,
    titleSmall: _titleSmall,

    // bodyLarge: ,
    // bodyMedium: ,
    // bodySmall: ,
  );

  //! Text Style - dark
  // static final TextStyle _darkThemeHeadingTextStyle =
  //     _lightHeadingText.copyWith(color: _darkTextColorPrimary);

  // static final TextStyle _darkThemeBodyeTextStyle =
  //     _lightBodyText.copyWith(color: _darkTextColorPrimary);

  // static final TextStyle _darkThemeLargeTextStyle =
  //     _lightLargeText.copyWith(color: _darkTextColorPrimary);

  // static final TextTheme _darkTextTheme = TextTheme(
  //     displayLarge: _darkThemeHeadingTextStyle,
  //     bodyLarge: _darkThemeBodyeTextStyle,
  //     bodyMedium: _darkThemeLargeTextStyle);

  // *****************
  // Theme light/dark
  // *****************

  // static final ThemeData lightTheme = ThemeData(
  //     useMaterial3: true,
  //     scaffoldBackgroundColor: _lightBackgroundColor,
  //     appBarTheme: const AppBarTheme(
  //         color: _lightBackgroundColor,
  //         iconTheme: IconThemeData(color: _iconColor)),
  //     colorScheme: ColorScheme.light(
  //       primary: _lightBackgroundColor,
  //       onPrimary: _lightOnPrimaryColor,
  //       secondary: _accentColor,
  //       primaryContainer: _lightContainerColor,
  //     ),
  //     textTheme: _lightTextTheme,
  //     bottomAppBarTheme: const BottomAppBarTheme(color: _appbarColorLight));

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: _darkBackgroundColor,
    appBarTheme: const AppBarTheme(
        color: _darkBackgroundColor,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: _iconColor)),
    colorScheme: const ColorScheme.dark(
      primary: _darkPrimaryColor,
      secondary: _accentColor,
      onPrimary: _darkOnPrimaryColor,
      primaryContainer: _darkContainerColor,
    ),
    textTheme: _textTheme,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: _appbarColorDark,
    ),
  );
}

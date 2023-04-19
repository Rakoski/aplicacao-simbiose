import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../assets/colors/app-colors.dart';

class DarkThemeData {
  ThemeData get themeData {

    TextTheme txtTheme = TextTheme(
      titleMedium: GoogleFonts.nunito(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
      titleLarge: GoogleFonts.nunito(color: Colors.white, fontSize: 22),
      titleSmall: GoogleFonts.nunito(color: Colors.white, fontSize: 18),
      bodyMedium: GoogleFonts.nunito(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w400),
      bodyLarge: GoogleFonts.nunito(color: Colors.black54, fontSize: 18),
      bodySmall: GoogleFonts.nunito(color: Colors.black54, fontSize: 18),
      labelLarge: GoogleFonts.nunito(color: Colors.black54, fontSize: 18),
      labelMedium: GoogleFonts.nunito(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w500),
      labelSmall: GoogleFonts.nunito(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.w100),
    );

    InputDecorationTheme inputDecorationTheme =
    const InputDecorationTheme(border: InputBorder.none);

    PopupMenuThemeData popupMenuThemeData = PopupMenuThemeData(
        color: AppColors.darkMode,
        labelTextStyle: MaterialStatePropertyAll(
            GoogleFonts.nunito(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400)));

    BottomNavigationBarThemeData bottomNavigationBarThemeData =
    const BottomNavigationBarThemeData(
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white);

    ListTileThemeData listTileThemeData =
    const ListTileThemeData(textColor: Colors.white, style: ListTileStyle.list);

    ProgressIndicatorThemeData progressIndicatorThemeData =
    const ProgressIndicatorThemeData(circularTrackColor: Colors.white);

    IconThemeData iconThemeData = const IconThemeData(color: Colors.white);

    DialogTheme dialogTheme = DialogTheme(
        titleTextStyle: TextStyle(fontSize: 18, color: Colors.white));

    TextButtonThemeData textButtonTheme = TextButtonThemeData(
        style: ButtonStyle(
            textStyle:
            MaterialStatePropertyAll(TextStyle(fontSize: 18)),
            foregroundColor: const MaterialStatePropertyAll(Colors.white)));

    IconButtonThemeData iconButtonTheme = IconButtonThemeData(
        style: ButtonStyle(
            iconColor: const MaterialStatePropertyAll(Colors.white),
            minimumSize: const MaterialStatePropertyAll(Size.fromRadius(22)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))));

    Color scaffoldBackgroundColor = AppColors.darkMode;

    bool applyElevationOverlayColor = false;

    AppBarTheme appBarTheme = AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white),
    );

    bool useMaterial3 = true;

    OutlinedButtonThemeData outlinedButtonTheme = const OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.white),
        ));

    var t = ThemeData.from(
        textTheme: txtTheme,
        colorScheme: ColorScheme.dark(),
        useMaterial3: true)
        .copyWith(
        primaryColor: Colors.white,
        dialogTheme: dialogTheme,
        iconTheme: iconThemeData,
        progressIndicatorTheme: progressIndicatorThemeData,
        inputDecorationTheme: inputDecorationTheme,
        popupMenuTheme: popupMenuThemeData,
        useMaterial3: useMaterial3,
        bottomNavigationBarTheme: bottomNavigationBarThemeData,
        listTileTheme: listTileThemeData,
        textButtonTheme: textButtonTheme,
        iconButtonTheme: iconButtonTheme,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        applyElevationOverlayColor: applyElevationOverlayColor,
        appBarTheme: appBarTheme,
        outlinedButtonTheme: outlinedButtonTheme,);

    return t;
  }
}

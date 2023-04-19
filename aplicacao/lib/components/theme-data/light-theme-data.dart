import 'package:caixa_simbiose/assets/colors/app-colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightThemeData {
  ThemeData get themeData {
    TextTheme txtTheme = TextTheme(
      titleMedium: GoogleFonts.nunito(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w600),
      titleLarge: GoogleFonts.nunito(color: Colors.black54, fontSize: 22),
      titleSmall: GoogleFonts.nunito(color: Colors.black54, fontSize: 18),
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
        color: AppColors.lightMode,
        labelTextStyle: MaterialStatePropertyAll(
            GoogleFonts.nunito(color: Colors.black, fontSize: 18)));
    BottomNavigationBarThemeData bottomNavigationBarThemeData =
    const BottomNavigationBarThemeData(
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black);
    ListTileThemeData listTileThemeData =
    const ListTileThemeData(textColor: Colors.black, style: ListTileStyle.list);
    ProgressIndicatorThemeData progressIndicatorThemeData =
    const ProgressIndicatorThemeData(circularTrackColor: Colors.black);
    IconThemeData iconThemeData = const IconThemeData(color: Colors.black);
    DialogTheme dialogTheme = DialogTheme(
        titleTextStyle: TextStyle(fontSize: 18, color: Colors.black));
    TextButtonThemeData textButtonTheme = TextButtonThemeData(
        style: ButtonStyle(
            textStyle:
            MaterialStatePropertyAll(TextStyle(fontSize: 18)),
            foregroundColor: const MaterialStatePropertyAll(Colors.black)));
    IconButtonThemeData iconButtonTheme = IconButtonThemeData(
        style: ButtonStyle(
            iconColor: const MaterialStatePropertyAll(Colors.black),
            minimumSize: const MaterialStatePropertyAll(Size.fromRadius(22)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))));
    Color scaffoldBackgroundColor = AppColors.lightMode;
    bool applyElevationOverlayColor = false;
    AppBarTheme appBarTheme = AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black),
    );
    bool useMaterial3 = true;
    OutlinedButtonThemeData outlinedButtonTheme = const OutlinedButtonThemeData(style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(Colors.black)));

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
        outlinedButtonTheme: outlinedButtonTheme);

    return t;
  }
}

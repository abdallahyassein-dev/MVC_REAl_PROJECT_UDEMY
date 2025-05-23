/*
* File : App Theme
* Version : 1.0.0
* */

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final int themeLight = 1;
  static final int themeDark = 2;
  static final TextStyle Function(
      {Paint background,
      Color backgroundColor,
      Color? color,
      TextDecoration decoration,
      Color decorationColor,
      TextDecorationStyle decorationStyle,
      double decorationThickness,
      List<FontFeature> fontFeatures,
      double? fontSize,
      FontStyle fontStyle,
      FontWeight fontWeight,
      Paint foreground,
      double? height,
      double letterSpacing,
      Locale locale,
      List<Shadow> shadows,
      TextBaseline textBaseline,
      TextStyle textStyle,
      double wordSpacing}) fontFamily = GoogleFonts.cairo;

  AppTheme._();

  static CustomAppTheme getCustomAppTheme(int themeMode) {
    if (themeMode == themeLight) {
      return lightCustomAppTheme;
    } else if (themeMode == themeDark) {
      return darkCustomAppTheme;
    }
    return darkCustomAppTheme;
  }

  static FontWeight _getFontWeight(int weight) {
    switch (weight) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w300;
      case 500:
        return FontWeight.w400;
      case 600:
        return FontWeight.w500;
      case 700:
        return FontWeight.w600;
      case 800:
        return FontWeight.w700;
      case 900:
        return FontWeight.w900;
    }
    return FontWeight.w400;
  }

  static TextStyle getTextStyle(TextStyle? textStyle,
      {int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double letterSpacing = 0.15,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    double? finalFontSize = fontSize != null ? fontSize : textStyle!.fontSize;

    Color? finalColor;
    if (color == null) {
      finalColor = xMuted
          ? textStyle!.color!.withAlpha(160)
          : (muted ? textStyle!.color!.withAlpha(200) : textStyle!.color);
    } else {
      finalColor = xMuted
          ? color.withAlpha(160)
          : (muted ? color.withAlpha(200) : color);
    }

    return fontFamily(
        fontSize: finalFontSize,
        fontWeight: _getFontWeight(fontWeight),
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }

  //App Bar Text
  static final TextTheme lightAppBarTextTheme = TextTheme(
    headlineLarge: fontFamily(
        textStyle: TextStyle(
            fontSize: 102, color: Color(0xff495057), fontFamily: "boahmed")),
    headlineMedium: fontFamily(
        textStyle: TextStyle(
            fontSize: 64, color: Color(0xff495057), fontFamily: "boahmed")),
    headlineSmall: fontFamily(
        textStyle: TextStyle(
            fontSize: 51, color: Color(0xff495057), fontFamily: "boahmed")),
  );
  static final TextTheme darkAppBarTextTheme = TextTheme(
    headlineLarge: fontFamily(
        textStyle: TextStyle(
            fontSize: 102, color: Color(0xff495057), fontFamily: "boahmed")),
    headlineMedium: fontFamily(
        textStyle: TextStyle(
            fontSize: 64, color: Color(0xff495057), fontFamily: "boahmed")),
    headlineSmall: fontFamily(
        textStyle: TextStyle(
            fontSize: 51, color: Color(0xff495057), fontFamily: "boahmed")),
  );

  //Text Themes
  static final TextTheme lightTextTheme = TextTheme(
    headlineLarge: fontFamily(
        textStyle: TextStyle(
            fontSize: 102, color: Color(0xff495057), fontFamily: "boahmed")),
    headlineMedium: fontFamily(
        textStyle: TextStyle(
            fontSize: 64, color: Color(0xff495057), fontFamily: "boahmed")),
    headlineSmall: fontFamily(
        textStyle: TextStyle(
            fontSize: 51, color: Color(0xff495057), fontFamily: "boahmed")),
  );
  static final TextTheme darkTextTheme = TextTheme(
    headlineLarge: fontFamily(
        textStyle: TextStyle(
            fontSize: 102, color: Color(0xff495057), fontFamily: "boahmed")),
    headlineMedium: fontFamily(
        textStyle: TextStyle(
            fontSize: 64, color: Color(0xff495057), fontFamily: "boahmed")),
    headlineSmall: fontFamily(
        textStyle: TextStyle(
            fontSize: 51, color: Color(0xff495057), fontFamily: "boahmed")),
  );

  //Color Themes
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    primaryColor: Color(0xff0f63a7),
    canvasColor: Colors.transparent,

    scaffoldBackgroundColor: Color(0xffffffff),
    appBarTheme: AppBarTheme(
      // textTheme: lightAppBarTextTheme,
      actionsIconTheme: IconThemeData(
        color: Color(0xff495057),
      ),
      color: Color(0xffffffff),
      iconTheme: IconThemeData(color: Color(0xff495057), size: 24),
    ),
    navigationRailTheme: NavigationRailThemeData(
        selectedIconTheme:
            IconThemeData(color: Color(0xff0f63a7), opacity: 1, size: 24),
        unselectedIconTheme:
            IconThemeData(color: Color(0xff495057), opacity: 1, size: 24),
        backgroundColor: Color(0xffffffff),
        elevation: 3,
        selectedLabelTextStyle: TextStyle(color: Color(0xff0f63a7)),
        unselectedLabelTextStyle: TextStyle(color: Color(0xff495057))),
    colorScheme: ColorScheme.light(
        primary: Color(0xff0f63a7),
        onPrimary: Colors.white,
        secondary: Color(0xff495057),
        onSecondary: Colors.white,
        surface: Color(0xffe2e7f1),
        background: Color(0xfff3f4f7),
        onBackground: Color(0xff495057)),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.4),
      elevation: 1,
      margin: EdgeInsets.all(0),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(fontSize: 15, color: Color(0xaa495057)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Color(0xff0f63a7)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Colors.black54),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.black54)),
    ),
    splashColor: Color(0xff0f63a7),
    iconTheme: IconThemeData(
      color: Color(0xff0f63a7),
    ),
    textTheme: lightTextTheme,
    indicatorColor: Colors.white,
    disabledColor: Color(0xffdcc7ff),
    highlightColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color(0xff0f63a7),
        splashColor: Color(0xff0f63a7),
        highlightElevation: 8,
        elevation: 4,
        focusColor: Color(0xff0f63a7),
        hoverColor: Color(0xff0f63a7),
        foregroundColor: Colors.white),
    dividerColor: Color(0xffd1d1d1),
    // errorColor: Color(0xfff0323c),
    cardColor: Colors.white,
    // accentColor: Color(0xff0f63a7),
    popupMenuTheme: PopupMenuThemeData(
      color: Color(0xffffffff),
      textStyle: lightTextTheme.headlineMedium!
          .merge(TextStyle(color: Color(0xff495057))),
    ),
    bottomAppBarTheme:
        BottomAppBarTheme(color: Color(0xffffffff), elevation: 2),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Color(0xff495057),
      labelColor: Color(0xff0f63a7),
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color(0xff0f63a7), width: 2.0),
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Color(0xff0f63a7),
      inactiveTrackColor: Color(0xff0f63a7).withAlpha(140),
      trackShape: RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: Color(0xff0f63a7),
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red[100],
      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      canvasColor: Colors.transparent,
      primaryColor: Color(0xff0f63a7),
      scaffoldBackgroundColor: Color(0xff464c52),
      appBarTheme: AppBarTheme(
        // textTheme: darkAppBarTextTheme,
        actionsIconTheme: IconThemeData(
          color: Color(0xffffffff),
        ),
        color: Color(0xff2e343b),
        iconTheme: IconThemeData(color: Color(0xffffffff), size: 24),
      ),
      colorScheme: ColorScheme.dark(
        primary: Color(0xff0f63a7),
        secondary: Color(0xff00cc77),
        background: Color(0xff343a40),
        onPrimary: Colors.white,
        onBackground: Colors.white,
        onSecondary: Colors.white,
        surface: Color(0xff585e63),
      ),
      cardTheme: CardTheme(
        color: Color(0xff37404a),
        shadowColor: Color(0xff000000),
        elevation: 1,
        margin: EdgeInsets.all(0),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      textTheme: darkTextTheme,
      indicatorColor: Colors.white,
      disabledColor: Color(0xffa3a3a3),
      highlightColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xff0f63a7)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.white70),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.white70)),
      ),
      dividerColor: Color(0xffd1d1d1),
      //  errorColor: Colors.orange,
      cardColor: Color(0xff282a2b),
      splashColor: Color(0xff0f63a7),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff0f63a7),
          splashColor: Color(0xff0f63a7),
          highlightElevation: 8,
          elevation: 4,
          focusColor: Color(0xff0f63a7),
          hoverColor: Color(0xff0f63a7),
          foregroundColor: Colors.white),
      // accentColor: Color(0xff0f63a7),
      popupMenuTheme: PopupMenuThemeData(
        color: Color(0xff37404a),
        textStyle: lightTextTheme.headlineMedium!
            .merge(TextStyle(color: Color(0xffffffff))),
      ),
      bottomAppBarTheme:
          BottomAppBarTheme(color: Color(0xff464c52), elevation: 2),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Color(0xff495057),
        labelColor: Color(0xff0f63a7),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: Color(0xff0f63a7), width: 2.0),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: Color(0xff0f63a7),
        inactiveTrackColor: Color(0xff0f63a7).withAlpha(100),
        trackShape: RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbColor: Color(0xff0f63a7),
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
        tickMarkShape: RoundSliderTickMarkShape(),
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      cupertinoOverrideTheme: CupertinoThemeData());

  static ThemeData getThemeFromThemeMode(int themeMode) {
    if (themeMode == themeLight) {
      return lightTheme;
    } else if (themeMode == themeDark) {
      return darkTheme;
    }
    return lightTheme;
  }

  static NavigationBarTheme getNavigationThemeFromMode(int themeMode) {
    NavigationBarTheme navigationBarTheme = NavigationBarTheme();
    if (themeMode == themeLight) {
      navigationBarTheme.backgroundColor = Colors.white;
      navigationBarTheme.selectedItemColor = Color(0xff0f63a7);
      navigationBarTheme.unselectedItemColor = Color(0xff495057);
      navigationBarTheme.selectedOverlayColor = Color(0x380f63a7);
    } else if (themeMode == themeDark) {
      navigationBarTheme.backgroundColor = Color(0xff37404a);
      navigationBarTheme.selectedItemColor = Color(0xff37404a);
      navigationBarTheme.unselectedItemColor = Color(0xffd1d1d1);
      navigationBarTheme.selectedOverlayColor = Color(0xffffffff);
    }
    return navigationBarTheme;
  }

  static final CustomAppTheme lightCustomAppTheme = CustomAppTheme(
      bgLayer1: Color(0xffffffff),
      bgLayer2: Color(0xfff9f9f9),
      bgLayer3: Color(0xffe8ecf4),
      bgLayer4: Color(0xffdcdee3),
      disabledColor: Color(0xff636363),
      onDisabled: Color(0xffffffff),
      colorInfo: Color(0xffff784b),
      colorWarning: Color(0xffffc837),
      colorSuccess: Color(0xff3cd278),
      shadowColor: Color(0xffeaeaea),
      onInfo: Color(0xffffffff),
      onSuccess: Color(0xffffffff),
      onWarning: Color(0xffffffff),
      colorError: Color(0xfff0323c),
      onError: Color(0xffffffff),
      shimmerBaseColor: Color(0xFFF5F5F5),
      shimmerHighlightColor: Color(0xFFE0E0E0));
  static final CustomAppTheme darkCustomAppTheme = CustomAppTheme(
      bgLayer1: Color(0xff212429),
      bgLayer2: Color(0xff282930),
      bgLayer3: Color(0xff303138),
      bgLayer4: Color(0xff383942),
      disabledColor: Color(0xffbababa),
      onDisabled: Color(0xff000000),
      colorInfo: Color(0xffff784b),
      colorWarning: Color(0xffffc837),
      colorSuccess: Color(0xff3cd278),
      shadowColor: Color(0xff1a1a1a),
      onInfo: Color(0xffffffff),
      onSuccess: Color(0xffffffff),
      onWarning: Color(0xffffffff),
      colorError: Color(0xfff0323c),
      onError: Color(0xffffffff),
      shimmerBaseColor: Color(0xFF1a1a1a),
      shimmerHighlightColor: Color(0xFF454545));
}

class CustomAppTheme {
  static const Color starColor = Color(0xfff9c700);

  final Color bgLayer1,
      bgLayer2,
      bgLayer3,
      bgLayer4,
      disabledColor,
      onDisabled,
      colorInfo,
      colorWarning,
      colorSuccess,
      colorError,
      shadowColor,
      onInfo,
      onWarning,
      onSuccess,
      onError,
      shimmerBaseColor,
      shimmerHighlightColor;

  CustomAppTheme({
    this.bgLayer1 = const Color(0xffffffff),
    this.bgLayer2 = const Color(0xfff8faff),
    this.bgLayer3 = const Color(0xffeef2fa),
    this.bgLayer4 = const Color(0xffdcdee3),
    this.disabledColor = const Color(0xffdcc7ff),
    this.onDisabled = const Color(0xffffffff),
    this.colorWarning = const Color(0xffffc837),
    this.colorInfo = const Color(0xffff784b),
    this.colorSuccess = const Color(0xff3cd278),
    this.shadowColor = const Color(0xff1f1f1f),
    this.onInfo = const Color(0xffffffff),
    this.onWarning = const Color(0xffffffff),
    this.onSuccess = const Color(0xffffffff),
    this.colorError = const Color(0xfff0323c),
    this.onError = const Color(0xffffffff),
    this.shimmerBaseColor = const Color(0xFFF5F5F5),
    this.shimmerHighlightColor = const Color(0xFFE0E0E0),
  });
}

class NavigationBarTheme {
  Color? backgroundColor,
      selectedItemIconColor,
      selectedItemTextColor,
      selectedItemColor,
      selectedOverlayColor,
      unselectedItemIconColor,
      unselectedItemTextColor,
      unselectedItemColor;
}

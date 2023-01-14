import 'package:flutter/material.dart';

ThemeData getElChefTheme() => ThemeData(
      primaryColor: const Color(0xfffffa4b00),
      colorScheme: const ColorScheme(
        background: Color(0xfffffffff01f1f1f),
        brightness: Brightness.dark,
        error: Color.fromARGB(255, 238, 8, 8),
        onBackground: Color(0xffff7a5b3e),
        onError: Color(0xffffffafafa),
        onPrimary: Color(0xffffffafafa),
        onSecondary: Color(0xfff7a5b3e),
        onSurface: Color(0x0000fafafa),
        primary: Color(0xfffffa4b00),
        secondary: Color(0xffffcdbdae),
        surface: Color(0xffff7a5b3e),
      ),
    );

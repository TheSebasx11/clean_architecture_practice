import 'package:flutter/material.dart';

ThemeData theme() => ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      appBarTheme: appBarTheme(),
    );

AppBarTheme appBarTheme() => const AppBarTheme(
    color: Colors.deepPurple,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 18));

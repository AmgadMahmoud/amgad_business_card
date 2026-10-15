import 'package:flutter/material.dart';

// Palette taken from the profile photo: terracotta pillars, sandy walls,
// cobalt-blue door and clear sky.
const Color terracotta = Color(0xFF9A4F2A);
const Color terracottaLight = Color(0xFFF0A97F);
const Color sand = Color(0xFFDFAB76);
const Color cobalt = Color(0xFF1E385E);
const Color sky = Color(0xFFA9C2EE);
const Color cream = Color(0xFFFBF4EC);
const Color espresso = Color(0xFF1A1411);

final ColorScheme lightColorScheme =
    ColorScheme.fromSeed(
      seedColor: terracotta,
      brightness: Brightness.light,
    ).copyWith(
      primary: terracotta,
      onPrimary: Colors.white,
      secondary: cobalt,
      onSecondary: Colors.white,
      tertiary: sand,
      onTertiary: const Color(0xFF3B2410),
      surface: cream,
      onSurface: const Color(0xFF2B1E17),
      onSurfaceVariant: const Color(0xFF5C4A3F),
      outline: const Color(0xFFD9B48C),
    );

final ColorScheme darkColorScheme =
    ColorScheme.fromSeed(
      seedColor: terracotta,
      brightness: Brightness.dark,
    ).copyWith(
      primary: terracottaLight,
      onPrimary: const Color(0xFF4A1F08),
      secondary: sky,
      onSecondary: const Color(0xFF0E1F3A),
      tertiary: sand,
      onTertiary: const Color(0xFF3B2410),
      surface: espresso,
      onSurface: const Color(0xFFF3E7DC),
      onSurfaceVariant: const Color(0xFFCDB9A9),
      outline: const Color(0xFF7A5A44),
    );

ThemeData buildTheme(ColorScheme colorScheme) => ThemeData(
  colorScheme: colorScheme,
  scaffoldBackgroundColor: colorScheme.surface,
  appBarTheme: AppBarTheme(
    backgroundColor: colorScheme.surface,
    foregroundColor: colorScheme.primary,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
  ),
  dividerTheme: DividerThemeData(color: colorScheme.outline, thickness: 1),
  useMaterial3: true,
);

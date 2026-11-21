import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Light theme
  static const background = Color(0xFFF6F1E7);
  static const surface = Color(0xFFFBF8F2); // Cards, inputs, navigation
  static const primary = Color(0xFF16304A); // Navy buttons and branding
  static const onPrimary = Color(0xFFFFFFFF); // Text on primary buttons
  static const text = primary;
  static const mutedText = Color(0xFF7C8794);
  static const sage = Color(0xFFB7CDAE);
  static const sageLight = Color(0xFFE1EAD9);
  static const border = Color(0xFFE8E2D4);
  static const success = Color(0xFF4E8A58);
  static const error = Color(0xFFC0392B);
  static const blue = Color(0xFF2A5296);

  // Dark theme
  static const darkBackground = Color(0xFF0E1823);
  static const darkSurface = Color(0xFF162434);
  static const darkPrimary = sage;
  static const darkOnPrimary = darkBackground;
  static const darkText = Color(0xFFEAF0F5);
  static const darkMutedText = Color(0xFF8FA0B0);
  static const darkSage = Color(0xFF5E7F63);
  static const darkSageSurface = Color(0xFF1F3A32);
  static const darkBorder = Color(0xFF223445);
  static const darkSuccess = Color(0xFF8CC49A);
  static const darkError = error;

  // Additional UI colors
  static const white = onPrimary;
  static const accentRed = Color(0xFFD9534F);
  static const googleRed = Color(0xFFDB4437);
  static const logoAccent = Color(0xFF8DB585);
  static const captionText = Color(0xFF666677);
  static const inactiveDot = Color(0xFFCCCCCC);
  static const transparent = Color(0x00000000);

  // Splash background gradient
  static const splashGlowTop = Color(0xFF6C8AA8);
  static const splashGlowLeft = Color(0xFF31465B);
  static const splashGradientStart = Color(0xFF2B3B4A);
  static const splashGradientEnd = Color(0xFF0F1A26);

  // Prototype preview page and phone frame
  static const previewBackground = Color(0xFFE7E3D8);
  static const darkPreviewBackground = Color(0xFF0B1118);
  static const darkPreviewToolbar = Color(0xFF121C27);
  static const previewDivider = Color(0xFFDDD6C6);
  static const previewButtonBorder = Color(0x5516304A);
  static const phoneFrame = Color(0xFF101820);

  // Black shadows and overlays, preserving the HTML opacity
  static const black05 = Color(0x0D000000);
  static const black13 = Color(0x22000000);
  static const black27 = Color(0x44000000);
  static const black40 = Color(0x66000000);
  static const black53 = Color(0x88000000);

  // Event artwork uses a different hue for each event.
  static const eventHues = <int, double>{
    1: 215,
    2: 200,
    3: 228,
    4: 190,
  };

  static Color eventFirstGlow(double hue) =>
      HSLColor.fromAHSL(0.75, hue, 0.75, 0.60).toColor();

  static Color eventSecondGlow(double hue) =>
      HSLColor.fromAHSL(0.55, (hue + 35) % 360, 0.65, 0.62).toColor();

  static Color eventGradientStart(double hue) =>
      HSLColor.fromAHSL(1.0, hue, 0.45, 0.24).toColor();

  static Color eventGradientEnd(double hue) =>
      HSLColor.fromAHSL(1.0, hue, 0.60, 0.09).toColor();
}
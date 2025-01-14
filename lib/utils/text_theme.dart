import 'package:flutter/material.dart';

class AppTextTheme {
  // Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black, // Primary color for large headings
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: Colors.black, // Titles for sections
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.grey[800], // Secondary titles
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.grey[700], // Subtitles
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black, // Standard body text
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.black87,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.grey[600], // Smaller body text
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white, // Text for buttons and labels
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      color: Colors.grey[500], // Text for overlines
    ),
  );

  // Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white, // Primary color for large headings
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: Colors.white, // Titles for sections
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.grey[300], // Secondary titles
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.grey[400], // Subtitles
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white, // Standard body text
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.white70,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.grey[400], // Smaller body text
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black, // Text for buttons and labels
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      color: Colors.grey[500], // Text for overlines
    ),
  );
}

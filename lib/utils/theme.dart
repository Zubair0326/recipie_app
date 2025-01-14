import 'package:flutter/material.dart';

class AppTheme {
  static const Color backgroundDark = Color(0xFF121212);
  static const Color backgroundLight = Color(0xFFF5F5F5);

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepOrange, // Primary accent color
    scaffoldBackgroundColor: Colors.white, // Main background color
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepOrange,
      foregroundColor: Colors.white,
      elevation: 4,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      titleLarge: TextStyle(fontSize: 18, color: Colors.black54),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
      labelMedium: TextStyle(fontSize: 14, color: Colors.grey), // Added for consistency
    ),
    cardColor: Colors.grey[100], // Card background
    iconTheme: const IconThemeData(color: Colors.black),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.deepOrange,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.black54,
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.deepOrangeAccent, // Vibrant accent color for dark mode
    scaffoldBackgroundColor: backgroundDark, // Dark background
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.deepOrangeAccent,
      elevation: 4,
      iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      titleLarge: TextStyle(fontSize: 18, color: Colors.grey),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
      labelMedium: TextStyle(fontSize: 14, color: Colors.white70), // Added for consistency
    ),
    cardColor: const Color(0xFF1E1E1E), // Darker card background
    iconTheme: const IconThemeData(color: Colors.white),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.deepOrangeAccent,
      foregroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1E1E1E),
      selectedItemColor: Colors.deepOrangeAccent,
      unselectedItemColor: Colors.grey,
    ),
  );

  // Helper method to check dark mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}

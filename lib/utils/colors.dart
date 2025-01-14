import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primaryColor = Color(0xFF6A9D5A); // Vibrant green for primary elements
  static const Color secondaryColor = Color(0xFFFFA726); // Warm orange for accents

  // Background colors
  static const Color backgroundLight = Color(0xFFF8F8F8); // Light background
  static const Color backgroundDark = Color(0xFF2E2E2E); // Dark background for dark mode

  // Text colors
  static const Color textPrimary = Color(0xFF212121); // Primary dark text
  static const Color textSecondary = Color(0xFF757575); // Secondary gray text
  static const Color textHighlight = Color(0xFFFFFFFF); // Highlighted text for dark elements

  // Button colors
  static const Color buttonColor = primaryColor; // Green for action buttons
  static const Color buttonText = textHighlight; // White for button text

  // Card colors
  static const Color cardBackground = Color(0xFFFFFFFF); // White for cards
  static const Color cardShadow = Color(0xFFD6D6D6); // Light gray for card shadows

  // Additional colors
  static const Color success = Color(0xFF66BB6A); // Green for success messages
  static const Color error = Color(0xFFEF5350); // Red for error messages
  static const Color warning = Color(0xFFFFC107); // Yellow for warnings
  static const Color info = Color(0xFF42A5F5); // Blue for informational messages

  // Gradient colors
  static const List<Color> gradientPrimary = [
    Color(0xFF81C784), // Light green
    primaryColor,      // Vibrant green
  ];
  static const List<Color> gradientSecondary = [
    Color(0xFFFFD54F), // Light orange
    secondaryColor,    // Warm orange
  ];
//bottomAppBar color
   static const Color bottomAppBarColor = Color.fromARGB(255, 15, 15, 14);
}

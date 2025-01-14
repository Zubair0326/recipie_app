import 'package:Recify/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Verticalimagescrool extends StatelessWidget {
  const Verticalimagescrool({
    super.key,
    required this.icon, // Icon for the widget
    required this.title, // Title below the icon
    required this.isSelected, // Is the item selected?
    this.onTap, // Action on tap
    this.backgroundColor, // Background color
    this.targetPage, // Target page to navigate
  });

  final IconData icon; // Icon data type
  final String title; // Title text
  final bool isSelected; // Is this item selected?
  final Color? backgroundColor; // Custom background color
  final void Function()? onTap; // Tap event handler
  final Widget? targetPage; // Page to navigate to

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            if (targetPage != null) {
              Get.to(() => targetPage!); // Navigate using GetX dynamically
            }
          },
      child: Padding(
        padding: const EdgeInsets.only(right: 30), // Padding between icons
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures the widget doesn't take excess space
          children: [
            Container(
              width: 65, // Icon container width
              height: 65, // Icon container height
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (Theme.of(context).brightness == Brightness.dark
                        ? AppColors.backgroundDark
                        : AppColors.backgroundLight),
                borderRadius: BorderRadius.circular(80), // Circular container
              ),
              child: Center(
                child: Icon(
                  icon, // Display the icon
                  size: 32, // Icon size
                  color: isSelected ? Colors.red : Colors.black, // Icon color
                ),
              ),
            ),
            const SizedBox(height: 8), // Space between icon and text
            SizedBox(
              width: 75, // Adjusted width for better text fitting
              child: Text(
                title, // Dynamic title text
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: isSelected ? Colors.red : Colors.black, // Text color
                      fontWeight: FontWeight.w500, // Slightly bold for better visibility
                    ),
                maxLines: 1, // Limit the text to one line
                overflow: TextOverflow.ellipsis, // Add ellipsis if the text overflows
                textAlign: TextAlign.center, // Center align the text
              ),
            ),
          ],
        ),
      ),
    );
  }
}

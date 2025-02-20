import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white.withOpacity(0.1)),
        child: Icon(
          icon,
          size: 28,
        ));
  }
}

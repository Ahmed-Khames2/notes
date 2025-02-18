// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_icon.dart';

class Appbarcusom extends StatelessWidget {
  const Appbarcusom({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        CustomSearchIcon(icon: icon,),
      ],
    );
  }
}

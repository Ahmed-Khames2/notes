import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_icon.dart';

class Appbarcusom extends StatelessWidget {
  const Appbarcusom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          'Notes',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}

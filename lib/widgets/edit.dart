import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Appbarcusom.dart';

class EditeBody extends StatelessWidget {
  const EditeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Column(
        children: [
          Appbarcusom(title: 'Edit Note', icon: Icons.check,),
        ],
      ),
    );
  }
}

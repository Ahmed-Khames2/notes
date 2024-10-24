import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Appbarcusom.dart';
import 'package:notes_app/widgets/custom_note.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Appbarcusom(),
          CustomNote(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditeBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottem_sheate.dart';
import 'package:notes_app/widgets/note_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 143, 225, 255),
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              // side: const BorderSide(
              //   color: Colors.white,
              //   width: 2,
              // )
            ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheat();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}

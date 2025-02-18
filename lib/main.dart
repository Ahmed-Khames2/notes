import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
// import 'package:notes_app/widgets/custom_note.dart';

void main() {
  // print('main');
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        // scaffoldBackgroundColor: Colors.black,
      ),
      // routes: {
      //   CustomNote.id: (context) => const CustomNote(),

      // },
      home: const NotesView(),
    );
  }
}

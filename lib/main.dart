import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/views/notes_view.dart';
// import 'package:notes_app/widgets/custom_note.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // أضف هذا السطر
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
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

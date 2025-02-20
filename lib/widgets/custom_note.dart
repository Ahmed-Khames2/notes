import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/edite_note_view.dart';

class CustomNote extends StatelessWidget {
  static String id = 'custom_note';
  const CustomNote({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, CustomNote.id);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditeNoteView();
        }));
      },
      child: Container(
        // margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffFFCC80)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              textColor: Colors.black,
              title: const Text(
                'Flutter tips',
                style: TextStyle(fontSize: 28),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'Build your career with ahmed khames',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May21,2022',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

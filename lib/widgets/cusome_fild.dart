import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constans.dart';

class CusomeFild extends StatelessWidget {
  const CusomeFild({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kprimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          // alignLabelWithHint: true,
          hintStyle: const TextStyle(color: kprimaryColor),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(kprimaryColor),
        ));
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}

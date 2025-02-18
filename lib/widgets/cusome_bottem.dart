import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constans.dart';

// ignore: camel_case_types
class Cusome_Bottem extends StatelessWidget {
  const Cusome_Bottem({
    super.key,required this.onTap,
  });
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 50,
          // width: double.infinity,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextButton(
              onPressed: () {},
              child: const Text(
                'Add Note',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final String? text;
  Color? color;
  CustomButton({Key? key, this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text!,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: color!,
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2))),
      ),
      onPressed: () {},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mahmodelmalky/const/color.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  String? hint;
  bool? prefix;
  bool? suffix;
  CustomTextFormField({Key? key, this.hint, this.prefix, this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          hintStyle: const TextStyle(
              color: Colors.black26, fontSize: 16, fontStyle: FontStyle.italic),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: mainColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: mainColor, width: 1),
          ),
          prefixIcon: prefix!
              ? const Icon(
                  Icons.email_outlined,
                  color: secondColor,
                )
              : null,
          suffixIcon: suffix!
              ? const Icon(
                  Icons.remove_red_eye_outlined,
                  color: secondColor,
                )
              : null,
        ),
      ),
    );
  }
}

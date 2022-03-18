import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mahmodelmalky/const/color.dart';
import 'package:mahmodelmalky/widgets/custem_logo.dart';
import 'package:mahmodelmalky/widgets/custom_text_field.dart';
import 'package:mahmodelmalky/widgets/custombutton.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 30,
              ),
              const CustomLogo(),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Welcome Back!',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Lets share your talent with world',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                hint: 'Email or mobile number',
                prefix: false,
                suffix: false,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                hint: 'password',
                prefix: false,
                suffix: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    onChanged: (bool? value) {},
                    activeColor: const Color(0xFF6200EE),
                    value: false,
                  ),
                  const Text(
                    'Remember Me',
                  ),
                  const Spacer(),
                  Text(
                    'Forget Password?',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: secondColor,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: 'Sign IN',
                    color: secondColor,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account!',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'SignUp',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: secondColor,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'lib/assets/images/LOGO.png',
          fit: BoxFit.fitHeight,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/G.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/assets/images/oldgolio.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }
}

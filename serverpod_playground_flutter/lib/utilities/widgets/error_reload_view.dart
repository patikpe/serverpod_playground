import 'package:flutter/material.dart';

class ErrorReloadView extends StatelessWidget {
  const ErrorReloadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/splash_screen.png'),
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}

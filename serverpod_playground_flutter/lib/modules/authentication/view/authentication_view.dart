// Using serverpod_auth_email_flutter package to provide email authentication.
// Change later when menu and user roles are implemented. Perhaps!!!

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:serverpod_playground_flutter/main.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

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
        SignInWithEmailButton(
          caller: client.modules.auth,
          onSignedIn: () => context.replace('/home'),
          style: Theme.of(context).elevatedButtonTheme.style,
        ),
        Text(
          'About Serverpod Playground',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

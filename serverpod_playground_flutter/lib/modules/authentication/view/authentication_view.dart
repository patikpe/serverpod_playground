import 'package:flutter/material.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:serverpod_playground_flutter/main.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SignInWithEmailButton(
        caller: client.modules.auth,
        onSignedIn: () {},
        style: Theme.of(context).elevatedButtonTheme.style,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fog_of_earth/features/auth/presentation/pages/auth/welcome_page.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/splash_image.png',
              height: 200,
              width: 200,
            ),
          ),
        Center(
          child: Text(
            "Fog of Earth",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 60,
            )
          )
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomePage()),
              );
            },
            child: Text (
              'Go back',
            )
          )
        )
        ]
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fog_of_earth/features/auth/presentation/pages/auth/signin_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
        child: Image.asset(
          'assets/images/splash_image.png',
          width: 200,
          height: 200,
        ),
        ),
        Center(
          child: Text (
            "Fog of Earth",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 60,
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
              MaterialPageRoute(builder: (context) => const SignIn()),
              );
            },
          child:  Text(
            'Sign In',
          ),
          ),
        ),
      ],
    ),
    );
  }
}

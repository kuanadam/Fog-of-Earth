import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fog_of_earth/features/auth/presentation/pages/registration_page.dart';
import 'package:fog_of_earth/features/auth/presentation/pages/signin_page.dart';

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
        const SizedBox(height: 150),
        const SignInButton(),
        const RegistrationButton(),
      ],
    ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
          MaterialPageRoute(builder: (context) => SignIn()),
          );
        },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color(0xFF8656ED),
      ),
      child: const Text(
        'Sign In',
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      ),
      ),
      )
    );
  }
}

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  RegistrationPage()),
          );
        },
        style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
          backgroundColor: Colors.white,
        ),
        child: const Text (
          'Create Account',
        style: TextStyle(
          fontSize: 20,
          color: Color(0xFF8656ED),
        ),
          ),
        ),
        ),
      );
  }
}

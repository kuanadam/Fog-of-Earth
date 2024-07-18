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
            "Sign Into Your Account",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 30,
            )
          )
        ),
        const SizedBox(height: 40),
        const UsernameField(),
        const SizedBox(height: 5),
        const PasswordField(),
        const SizedBox(height: 5),
        const ConfirmSignInButton(),
        const SizedBox(height: 100),
        const BackButton(),
        ]
      )
    );
  }
}

class ConfirmSignInButton extends StatelessWidget {
  const ConfirmSignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF8656ED),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          )
        ),
        child: const Text(
          'Sign In',
        style: TextStyle(
          color: Colors.white,
        )
        )
      ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 300,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
            labelText: 'Password',
          ),
        )
      )
    );
  }
}


class UsernameField extends StatelessWidget {
  const UsernameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 300,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(),
            labelText: 'Username',
          ),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
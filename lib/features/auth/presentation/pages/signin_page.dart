import 'package:flutter/material.dart';
import 'package:fog_of_earth/features/auth/presentation/pages/welcome_page.dart';
import "package:fog_of_earth/features/auth/presentation/pages/auth/auth.dart";

class SignIn extends StatefulWidget {
 const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
final TextEditingController _emailsignInController = TextEditingController();
final TextEditingController _passwordsignInController = TextEditingController();

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
        SizedBox(height: 40),
         _emailField(),
        SizedBox(height: 5),
         _passwordField(),
        const SizedBox(height: 5),
         _confirmSignInButton(context),
        const SizedBox(height: 100),
        _backHome(context),
        ]
      )
    );
  }

  Widget _confirmSignInButton(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
      child: ElevatedButton(
        onPressed: () async {
        await Auth().SignIn(
          email: _emailsignInController.text,
          password: _passwordsignInController.text,
          context: context,
        );
        },
        style: ElevatedButton.styleFrom(
        backgroundColor:const Color(0xFF8656ED),

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


  Widget _passwordField() {
    return  Center(
      child: SizedBox(
        width: 300,
        child: TextField(
          controller: _passwordsignInController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
            labelText: 'Password',
          ),
        )
      )
    );
  }


  Widget _emailField() {
    return  Center(
      child: SizedBox(
        width: 300,
        child: TextField(
          controller: _emailsignInController,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(),
            labelText: 'Email',
          ),
        ),
      ),
    );
  }


  Widget _backHome (BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WelcomePage()),
          );
        },
        child: const Text (
          'Go back',
        )
      )
    );
  }
}
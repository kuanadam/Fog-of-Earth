import "package:flutter/material.dart";
import "package:fog_of_earth/features/auth/presentation/pages/auth/auth.dart";
import "package:fog_of_earth/features/auth/presentation/pages/welcome_page.dart";

class RegistrationPage extends StatefulWidget {
  RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          SizedBox(
            width: 200,
            height: 200,
          child: Image.asset('assets/images/splash_image.png'),
          ),
          const Text(
            "Sign Up",
          style: TextStyle(
            fontSize: 40,
          )
          ),
            const SizedBox(height: 60),
            _emailAddress(),
            _password(),
            _signUpButton(),
          ],
        ),
      ),
    );
  }

  Widget _emailAddress() {
    return Container(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Email Address',
          ),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email Address",
              filled: true,
              fillColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _password() {
    return Container(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Password'),
          TextField(
          controller: _passwordController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
            labelText: 'Password',
          ),
          )
        ],
      ),
    );
  }


Widget _signUpButton(){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
     onPressed: () async{
      await Auth().signUp(
        email: _emailController.text,
        password: _passwordController.text,
      );
     },
    child: const Text(
      "Create Your Account",
    ),
  );
}
}
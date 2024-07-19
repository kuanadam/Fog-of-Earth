import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:fog_of_earth/features/auth/presentation/pages/welcome_page.dart";

class Registration extends StatelessWidget {
  const Registration({super.key});

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
          const Center(
            child: Text(
              'Create Your Account',
              style: TextStyle( fontSize: 30),
            )
          ),
          const SizedBox(height: 60),
          const RegistrationEmailField(),
          const SizedBox(height: 10),
          const RegistrationUsernameField(),
          const SizedBox(height: 10),
          const RegistrationPasswordField(),
          const SizedBox(height: 10),
          const SignUpButton(),
          const SizedBox(height: 10),
          const RegistrationBack(),  
        ]
      )
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  SizedBox(
        width: 300,
      child: ElevatedButton(
      onPressed: () {},  
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF8656ED),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )
    ),
    child: const Text(
      'Sign Up',
    style:TextStyle(
      color: Colors.white,
    )
    ),
    ),
      ),
    );
  }
}

class RegistrationEmailField extends StatelessWidget {
  const RegistrationEmailField({
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
          border:OutlineInputBorder(),
          labelText: 'Email',
        )
      )
      )
    );
  }
}
class RegistrationPasswordField extends StatelessWidget {
  const RegistrationPasswordField({
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
          labelText: "Password",
        )
      )
      )
    );
  }
}

class RegistrationUsernameField extends StatelessWidget {
  const RegistrationUsernameField({
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
          labelText: "Username",
        )
      )
      )
    );
  }
}

class RegistrationBack extends StatelessWidget {
  const RegistrationBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton (
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WelcomePage()),
            );  
        },
        child: const Text(
          'Go Back'
        )
      )
    );
  }
}
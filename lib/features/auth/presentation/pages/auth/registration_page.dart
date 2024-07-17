import "package:flutter/material.dart";
import "package:fog_of_earth/features/auth/presentation/pages/auth/welcome_page.dart";

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
          const RegistrationUsernameField(),
          const RegistrationPasswordField(),
          const RegistrationBack(),  
        ]
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
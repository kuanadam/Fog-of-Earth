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
            'assets/images/splash_image.png'
           ),
           ),
          Center(
            child: ElevatedButton (
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()),
                  );  
              },
              child: Text(
                'Go Back'
              )
            )
          )  
        ]
      )
    );
  }
}
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
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
            SizedBox(
            height: 150,
            child: Image.asset('assets/images/splash_image.png'),
            ),
            const Text(
              "Create Your Account",
            style: TextStyle(
              fontSize: 35,
            )
            ),
              const SizedBox(height: 40),
              _emailAddress(),
              _password(),
              const SizedBox(height: 20),
              _signUpButton(context),
              _BackButton(context),
            ],
          ),
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
Widget _BackButton(BuildContext context){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    onPressed:(){
    Navigator.push(
      context,
    MaterialPageRoute(builder: (context) => WelcomePage(),
    ),
    );
    },
  child: Text(
    'Back',
  )
  );
}

Widget _signUpButton(BuildContext context){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor:const Color(0xFF8656ED),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
      minimumSize: const Size(300, 50),
    ),
     onPressed: () async{
      await Auth().signUp(
        email: _emailController.text,
        password: _passwordController.text,
        context: context,
      );
     },
    child: const Text(
      "Sign Up",
    style: TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontFamily: 'Poppins',
    )
    ),
  );
}
}
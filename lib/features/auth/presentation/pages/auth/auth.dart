import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fog_of_earth/features/auth/presentation/pages/home_page.dart';
import 'package:fog_of_earth/features/auth/presentation/pages/welcome_page.dart';

class Auth{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signUp ({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
  try{
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email, 
      password: password,
    );
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()
    )
    );
  } on FirebaseAuthException catch(e) {
    String message = '';
    if(e.code == 'weak-password'){
      message = "The password provided is too weak.";
    } else if (e.code == 'email-already-in-use'){
      message = "An account already exists with the provided email";
    } else{
      message = 'An error occured during sign up, please try again.';
    }
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.SNACKBAR,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 14.0,
    );
  }
  }

  Future<void> SignIn ({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email, 
        password: password,
        );
      await Future.delayed(const Duration(seconds: 1));
      Navigator.pushReplacement(
        context,
      MaterialPageRoute(builder: (context) => HomePage(),
      ),
      );
    } on FirebaseAuthException catch (e){
      String message = '';
      if (e.code == 'user-not-found'){
        message = 'No user found for that email';
      } else if (e.code == 'wrong-password'){
        message = 'Wrong password provided for that user';
      } else{
      message = 'An error occured during sign in, please try again.';
    }
      Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.SNACKBAR,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 14.0,
    );
    }
  }

  Future<void> SignOut({
    required BuildContext context,
  }) async {
    await _firebaseAuth.signOut(); 
    Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
      );
      String message = "Successfully signed out";
      Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.SNACKBAR,
      backgroundColor: const Color.fromARGB(137, 37, 37, 37),
      textColor: Colors.white,
      fontSize: 14.0,
    );

  }
}
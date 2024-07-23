import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fog_of_earth/features/auth/presentation/bloc/splash_cubit.dart';
import 'package:fog_of_earth/features/auth/presentation/pages/welcome_page.dart';

import '../bloc/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit,SplashState>(
      listener:(context,state) {
        if (state is UnAuthenticated){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder:(context) => const WelcomePage()
            )
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset(
            'assets/images/splash_image.png',
          width: 200,
          height: 200,
        ),
      ),
      ),
    );
  }
}
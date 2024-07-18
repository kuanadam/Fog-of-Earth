import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/auth/presentation/bloc/splash_cubit.dart';
import 'features/auth/presentation/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
            color: Colors.white,
            ),
          ),
        ),
        home: const SplashPage()
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(

       primaryColor: Color(0xFFE50914),
       scaffoldBackgroundColor: const Color.fromARGB(255, 24, 24, 24),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

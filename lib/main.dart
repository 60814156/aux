import 'package:aux/components/components.dart';
import 'package:aux/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Proyecto SI2',
    initialRoute: 'splash',
    routes:{
      '/': ( _ )=>const HomeScreen(),
      'splash': ( _ )=>const SplashScreen(),
      'login': ( _ )=>const LoginScreen(),
    
    },
    theme: ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.yellow[100],
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Color.fromARGB(255, 3, 94, 27)
      )
    ),
    


    );
  }
}

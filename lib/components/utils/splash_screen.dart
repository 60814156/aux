
import 'package:aux/screens/login/login_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    var d= const  Duration(seconds: 8);
    Future.delayed(d, (){
      Navigator.pushAndRemoveUntil(
        context, 
        MaterialPageRoute(builder:(context){
        return const LoginScreen();
      }), 
      (route) => false,
      );
    });

    super.initState();
  }
  


  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/utils/splash.png'),
        fit: BoxFit.cover,
        width: 70,
        height:100 ,
        
        ),
          
          
      ),
    );
  }
}
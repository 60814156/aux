
import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  
  const AuthBackground({ super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          _HederIcon(),
          
          child
        ],
      ),
    );
  }
}



class _HederIcon extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(height: 30,), //MARGEN SUPERIoR DEL ICoNo
          Center(
            child: SizedBox(
              width: 150,
              child: Image(
                image: AssetImage('assets/utils/foto5.png'),
                fit: BoxFit.cover,
              
              )
              
            ),
          )
        ],
      ),
      
    );
  }
}









class _PurpleBox extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final Size= MediaQuery.of(context).size;

    return  Container(
      width: double.infinity ,
      height: Size.height *0.4 ,
      decoration: _PurpleBlackground(),
      

      child: Stack(
        children: [
           Positioned(top: 90, left: 30, child: _Bubble()), // Burbujas en diferentes lugares
          Positioned(top: 40, right: 20, child: _Bubble()),
          Positioned(top: 150, left: 150, child: _Bubble()),
          Positioned(top: 200, right: 100, child: _Bubble()),
          Positioned(bottom: 50, left: 80, child: _Bubble()),
          Positioned(bottom: 100, right: 120, child: _Bubble()),
          Positioned(top: -30, left: -30, child: _Bubble()),
          Positioned(bottom: -40, right: -20, child: _Bubble()),
          Positioned(top: 300, left: 20, child: _Bubble()),
          Positioned(top: 250, right: 80, child: _Bubble()),
          
        ],
      ),

    );
  }


  
  BoxDecoration _PurpleBlackground() => const BoxDecoration(
    gradient: LinearGradient(colors: [
      Color.fromARGB(255, 11, 173, 6),
      Color.fromARGB(255, 4, 62, 22)
      
    ])
  );
}

class _Bubble extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.5)
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'circle_name_with_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.deepOrange,Colors.orange])
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [

                    Image.asset("assets/srh_logo.png"),
                   const  SizedBox(height: 200,),
                  Expanded(child: Container(
                    alignment: Alignment.topCenter,
                    child:const  CircleNameWithAnimation()),   )

                  ],

                ),
                SizedBox(
                    width: double.infinity,
                    child: Image.asset("assets/travis_head.webp",fit: BoxFit.cover,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

import 'circle_text_drawing.dart';
class CircleNameWithAnimation extends StatefulWidget {
  const CircleNameWithAnimation({super.key});

  @override
  State<CircleNameWithAnimation> createState() => _CircleNameWithAnimationState();
}

class _CircleNameWithAnimationState extends State<CircleNameWithAnimation>with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration:const  Duration(seconds: 5))..repeat();
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller, builder: (context,child){
           return Transform.rotate(
               angle: _controller.value*2*pi,
               child:const  ArcText(radius: 100, text: 'Sunrisers Hyderabad  Travis Head ', textStyle: TextStyle(color: Colors.white,fontFamily: 'Lugrasimo',fontWeight: FontWeight.bold,fontSize: 37,letterSpacing: -3),));
    });

  }
}

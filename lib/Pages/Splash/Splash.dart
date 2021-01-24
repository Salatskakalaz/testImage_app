import 'dart:math';

import 'package:flutter/material.dart';

import 'Buttons/ButtonNext.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  CurveTween tween = CurveTween(curve: Curves.easeInCubic);

  double boxOnePaddingRight;
  double boxOnePaddingLeft;
  double paddingTop;
  double paddingTop1;

  void startAnimation() {
    controller.forward();
  }

  @override
  void initState() {
    boxOnePaddingRight = 0;
    boxOnePaddingLeft = 0;
    paddingTop = 0;
    paddingTop1 = 0;

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    animation = tween.animate(controller);

    controller.addListener(() {
      boxOnePaddingRight = MediaQuery.of(context).size.width * animation.value;

      paddingTop = -pow(0.8 * ((animation.value * 12)), 2);
      paddingTop1 = -pow(0.8 * ((animation.value * 12)), 2);
      // paddingTop = -pow(((animation.value > 0.5?animation.value:1)*(animation.value*12-6)),2)+36;
      print(paddingTop1);
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
              right: boxOnePaddingRight,
              top: 120 + paddingTop,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                        opacity:
                            1 - (animation.value * 2).clamp(0, 1).toDouble(),
                        child: BoxOne()),
                  ],
                ),
              )),
          Positioned(
            right: boxOnePaddingRight,
            bottom: 120 - paddingTop,
            child: Container(
              height: 70 - (animation.value ?? 0 * 50),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 1 - (animation.value * 2).clamp(0, 1).toDouble(),
                    child: ButtonNext(
                      koef: animation.value,
                      onTap: startAnimation,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: MediaQuery.of(context).size.width - boxOnePaddingRight,
              top: 120 - paddingTop1 - 92,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                        opacity: (animation.value * 2).clamp(0, 1).toDouble(),
                        child: BoxOne()),
                  ],
                ),
              )),
          Positioned(
            left: MediaQuery.of(context).size.width - boxOnePaddingRight,
            bottom: 120 + paddingTop1 + 92,
            child: Container(
              height: 70 - (animation.value ?? 0 * 50),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: (animation.value * 2).clamp(0, 1).toDouble(),
                    child: ButtonNext(
                      koef: animation.value,
                      onTap: startAnimation,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget BoxOne() {
    return Column(
      children: [
        Icon(
          Icons.image,
          color: Colors.white,
          size: 200,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'This is gallery based\non Unsplash',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              height: 2.5,
              wordSpacing: 2,
              letterSpacing: 2),
        ),
      ],
    );
  }
}

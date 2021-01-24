import 'package:flutter/material.dart';
import 'package:testImage_app/style.dart';

class ButtonNext extends StatefulWidget {
  double koef;
  final Function() onTap;

  ButtonNext({Key key, this.onTap, this.koef = 0}) : super(key: key);

  @override
  _ButtonNextState createState() => _ButtonNextState();
}

class _ButtonNextState extends State<ButtonNext>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  Tween tween = Tween<double>(begin: 24, end: 21);

  double size;
  bool pressed;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    animation = tween.animate(controller);

    controller.addListener(() {
      setState(() {});
    });

    size = 70;
    pressed = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (e) {
        pressed = true;
        controller.forward();
        setState(() {});
      },
      onTapUp: (e) {
        pressed = false;
        controller.reverse();
        setState(() {});
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: startGradient),
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: buttonBorder),
        ),
        duration: Duration(milliseconds: 200),
        height: pressed ? size - 5 : size,
        width: pressed ? size - 5 : size,
        child: Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.white,
          size: animation.value,
        ),
      ),
    );
  }
}

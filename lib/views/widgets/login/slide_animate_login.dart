import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SlideAnimateLogin extends StatelessWidget {
  final int delay;
  final Widget myWidget;
  const SlideAnimateLogin(
      {super.key, required this.delay, required this.myWidget});

  @override
  Widget build(BuildContext context) {
    return SlideInDown(
      delay: Duration(milliseconds: delay),
      duration: const Duration(milliseconds: 700),
      child: myWidget,
    );
  }
}

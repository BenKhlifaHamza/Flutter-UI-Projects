import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeAnimationLogin3 extends StatelessWidget {
  final int delay;
  final Widget myWidget;
  const FadeAnimationLogin3({
    super.key,
    required this.delay,
    required this.myWidget,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: delay),
      duration: const Duration(milliseconds: 500),
      child: myWidget,
    );
  }
}

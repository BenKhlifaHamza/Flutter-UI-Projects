import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeAnimationLogin2 extends StatelessWidget {
  final int delay;
  final Widget myWidget;
  const FadeAnimationLogin2({
    super.key,
    required this.delay,
    required this.myWidget,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: delay),
      child: myWidget,
    );
  }
}

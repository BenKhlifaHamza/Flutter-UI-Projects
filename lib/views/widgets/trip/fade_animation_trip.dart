import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeAnimationTrip extends StatelessWidget {
  final Duration delay;
  final Widget myWidget;
  const FadeAnimationTrip(
      {super.key, required this.myWidget, required this.delay});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: delay,
      child: myWidget,
    );
  }
}

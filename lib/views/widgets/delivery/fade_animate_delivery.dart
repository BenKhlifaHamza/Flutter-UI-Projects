import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeAnimationDelivery extends StatelessWidget {
  final Duration delay;
  final Widget myWidget;
  const FadeAnimationDelivery({
    super.key,
    required this.delay,
    required this.myWidget,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      delay: delay,
      child: myWidget,
    );
  }
}

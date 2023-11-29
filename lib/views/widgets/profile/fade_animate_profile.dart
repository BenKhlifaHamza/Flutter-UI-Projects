import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeAnimationProfile extends StatelessWidget {
  final int delay;
  final Widget myWidget;
  const FadeAnimationProfile({
    super.key,
    required this.delay,
    required this.myWidget,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: Duration(milliseconds: delay),
      child: myWidget,
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeAnimationParty extends StatelessWidget {
  final int delay;
  final Widget myWidget;
  const FadeAnimationParty({
    super.key,
    required this.delay,
    required this.myWidget,
  });

  @override
  Widget build(BuildContext context) {
    return BounceInDown(delay: Duration(milliseconds: delay), child: myWidget);
  }
}

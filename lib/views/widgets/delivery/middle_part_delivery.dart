import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/delivery/fade_animate_delivery.dart';

class MiddlePartDelivery extends StatelessWidget {
  const MiddlePartDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeAnimationDelivery(
        delay: const Duration(microseconds: 200),
        myWidget: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Free Delivery",
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}

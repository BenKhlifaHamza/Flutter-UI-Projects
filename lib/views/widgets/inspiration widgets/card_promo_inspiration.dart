import 'package:flutter/material.dart';

class PromoCardWidget extends StatelessWidget {
  final String imageName;
  const PromoCardWidget({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage("assets/inspiration/$imageName"),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient:
                  LinearGradient(begin: Alignment.bottomRight, stops: const [
                0.1,
                0.9,
              ], colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1)
              ])),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MakeVideoProfile extends StatelessWidget {
  final String imageName;
  const MakeVideoProfile({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/profile/$imageName"))),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.3),
          ])),
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white.withOpacity(.6),
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}

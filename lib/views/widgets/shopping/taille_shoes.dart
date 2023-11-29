import 'package:flutter/material.dart';

class TailleShoes extends StatelessWidget {
  final String taille;
  final bool active;
  const TailleShoes({super.key, required this.taille, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 40,
      width: 40,
      decoration: active
          ? BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10))
          : null,
      alignment: Alignment.center,
      child: Text(
        taille,
        style: TextStyle(
          color: active ? Colors.black : Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

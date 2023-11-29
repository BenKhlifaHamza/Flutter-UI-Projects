import 'package:flutter/material.dart';

class ShoppingCategorieWidget extends StatelessWidget {
  final String title;
  const ShoppingCategorieWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(238, 238, 238, 1),
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          title,
          style: const TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ForgetTextLogin3Widget extends StatelessWidget {
  const ForgetTextLogin3Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerRight,
      child: Text(
        "Forget Password ?",
        style: TextStyle(
          color: Color.fromRGBO(239, 108, 0, 1),
        ),
      ),
    );
  }
}

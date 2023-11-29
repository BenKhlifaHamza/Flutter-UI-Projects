import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(230, 81, 0, 1)),
      child: const Text(
        "Login",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

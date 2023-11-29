import 'package:flutter/material.dart';

class FormLogin3Widget extends StatelessWidget {
  const FormLogin3Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(255, 167, 38, .3),
                blurRadius: 10,
                offset: Offset(0, 10)),
          ]),
      child: const Column(
        children: [
          TextField(
            cursorColor: Color.fromRGBO(239, 108, 0, 1),
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "E-mail Address",
                labelStyle: TextStyle(color: Colors.grey)),
          ),
          Divider(
            thickness: .6,
            height: .5,
          ),
          TextField(
            cursorColor: Color.fromRGBO(239, 108, 0, 1),
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey)),
          )
        ],
      ),
    );
  }
}

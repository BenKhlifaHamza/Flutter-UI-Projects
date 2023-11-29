import 'package:flutter/material.dart';

class TopPartInspiration extends StatelessWidget {
  const TopPartInspiration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      padding: const EdgeInsets.all(20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Find Your",
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Inspiration",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(244, 243, 243, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search you're looking for",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
    );
  }
}

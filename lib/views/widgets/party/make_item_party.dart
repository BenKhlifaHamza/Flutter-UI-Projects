import 'package:flutter/material.dart';

class MakeItemParty extends StatelessWidget {
  final String imageName;
  final String date;
  const MakeItemParty({super.key, required this.imageName, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 200,
          margin: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
              Text(
                date,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "SEP",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imageName))),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      //begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.1),
                      ])),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bumbershoot 2023",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "19:00 PM",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

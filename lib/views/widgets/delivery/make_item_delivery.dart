import 'package:flutter/material.dart';

class MakeItemDelivery extends StatelessWidget {
  final String imageName;
  final String price;
  final String name;
  const MakeItemDelivery(
      {super.key,
      required this.imageName,
      required this.price,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.6,
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/delivery/$imageName"))),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient:
                    LinearGradient(begin: Alignment.bottomCenter, stops: const [
                  .2,
                  .9,
                ], colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ])),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$ $price",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

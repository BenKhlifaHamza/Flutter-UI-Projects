import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/inspiration%20widgets/card_promo_inspiration.dart';

class BottomPartInspiration extends StatelessWidget {
  const BottomPartInspiration({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Promo Today",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                PromoCardWidget(imageName: "one.jpg"),
                PromoCardWidget(imageName: "two.jpg"),
                PromoCardWidget(imageName: "three.jpg"),
                PromoCardWidget(imageName: "four.jpg"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("assets/inspiration/three.jpg"),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      stops: const [
                        0.3,
                        0.9,
                      ],
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.2)
                      ])),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Best Design",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

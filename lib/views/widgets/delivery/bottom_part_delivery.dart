import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/delivery/fade_animate_delivery.dart';
import 'package:ui_projects/views/widgets/delivery/make_item_delivery.dart';

class BottomPartDelivery extends StatelessWidget {
  const BottomPartDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            FadeAnimationDelivery(
                delay: Duration(milliseconds: 400),
                myWidget: MakeItemDelivery(
                  imageName: "one.jpg",
                  price: '15.00',
                  name: 'Vegetarian Pizza',
                )),
            FadeAnimationDelivery(
                delay: Duration(milliseconds: 500),
                myWidget: MakeItemDelivery(
                  imageName: "two.jpg",
                  price: '17.00',
                  name: 'Margarita Pizza',
                )),
            FadeAnimationDelivery(
                delay: Duration(milliseconds: 600),
                myWidget: MakeItemDelivery(
                  imageName: "three.jpg",
                  price: '19.00',
                  name: 'Napolitaine Pizza',
                )),
          ],
        ),
      ),
    );
  }
}

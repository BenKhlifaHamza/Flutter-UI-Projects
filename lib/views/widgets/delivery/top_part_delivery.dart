import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/delivery/fade_animate_delivery.dart';
import 'package:ui_projects/views/widgets/delivery/make_category_delivery.dart';

class TopPartDelivery extends StatelessWidget {
  const TopPartDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Food Delivery",
              style: TextStyle(
                fontSize: 40,
                color: Colors.grey[80],
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 50,
            child: ListView(scrollDirection: Axis.horizontal, children: const [
              FadeAnimationDelivery(
                  delay: Duration(milliseconds: 0),
                  myWidget:
                      MakeCategoryDelivery(isActive: true, title: "Pizza")),
              FadeAnimationDelivery(
                delay: Duration(milliseconds: 150),
                myWidget:
                    MakeCategoryDelivery(isActive: false, title: "Burgers"),
              ),
              FadeAnimationDelivery(
                delay: Duration(milliseconds: 300),
                myWidget:
                    MakeCategoryDelivery(isActive: false, title: "Salads"),
              ),
              FadeAnimationDelivery(
                delay: Duration(milliseconds: 450),
                myWidget:
                    MakeCategoryDelivery(isActive: false, title: "Kabobs"),
              ),
              FadeAnimationDelivery(
                delay: Duration(milliseconds: 600),
                myWidget:
                    MakeCategoryDelivery(isActive: false, title: "Spaghetti"),
              ),
            ]),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

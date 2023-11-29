import 'package:flutter/material.dart';
import 'package:ui_projects/routes.dart';
import 'package:ui_projects/views/widgets/delivery/fade_animate_delivery.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/delivery/starter-image.jpg"))),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.8),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const FadeAnimationDelivery(
                delay: Duration(seconds: 0),
                myWidget: Text(
                  'Taking Order For Faster Delivery',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto"),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const FadeAnimationDelivery(
                  delay: Duration(milliseconds: 300),
                  myWidget: Text(
                    "See resturants nearby by \nadding location",
                    style: TextStyle(
                        color: Colors.white, height: 1.4, fontSize: 18),
                  )),
              const SizedBox(
                height: 100.0,
              ),
              FadeAnimationDelivery(
                  delay: const Duration(milliseconds: 700),
                  myWidget: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [Colors.yellow, Colors.orange])),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RoutesNames.deliveryFood);
                      },
                      minWidth: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Start",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              const FadeAnimationDelivery(
                  delay: Duration(seconds: 1),
                  myWidget: Align(
                    child: Text(
                      "Now Deliver To Your Door 24/7",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

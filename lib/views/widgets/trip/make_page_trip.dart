import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/trip/fade_animation_trip.dart';

class MakePageTrip extends StatelessWidget {
  final String imageName;
  final String title;
  final String description;
  final String pageIndex;
  const MakePageTrip(
      {super.key,
      required this.imageName,
      required this.title,
      required this.description,
      required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/trip/$imageName"))),
      child: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(begin: Alignment.bottomRight, stops: const [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    pageIndex,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    "/4",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimationTrip(
                    delay: const Duration(seconds: 0),
                    myWidget: Text(
                      title,
                      style: const TextStyle(
                          fontFamily: "Nunito",
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FadeAnimationTrip(
                    delay: const Duration(milliseconds: 500),
                    myWidget: Row(
                      children: [
                        _starWidget(),
                        _starWidget(),
                        _starWidget(),
                        _starWidget(),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                        const Text(
                          "4.0",
                          style: TextStyle(color: Colors.white70),
                        ),
                        const Text(
                          "(2300)",
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimationTrip(
                      delay: const Duration(milliseconds: 1000),
                      myWidget: Text(
                        description,
                        style: const TextStyle(
                            wordSpacing: 2,
                            letterSpacing: 1,
                            fontFamily: "Nunito",
                            color: Colors.white),
                      ))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _starWidget() {
    return Container(
      margin: const EdgeInsets.only(right: 3),
      child: Icon(
        Icons.star,
        size: 20,
        color: Colors.yellow[800],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_projects/routes.dart';
import 'package:ui_projects/views/widgets/party/fade_animate_party.dart';

class PartyPage extends StatelessWidget {
  const PartyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/party/background.jpg"))),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.6),
          Colors.black.withOpacity(.8),
          Colors.black.withOpacity(.3)
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FadeAnimationParty(
                delay: 0,
                myWidget: Text(
                  "Find the best location near Tou for a god night.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      height: 1.1),
                )),
            const SizedBox(
              height: 30,
            ),
            FadeAnimationParty(
                delay: 100,
                myWidget: Text(
                  "Find the best location near Tou for a god night.",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.7),
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                  ),
                )),
            const SizedBox(
              height: 150,
            ),
            FadeAnimationParty(
                delay: 100,
                myWidget: InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, RoutesNames.partyDetails),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50),
                      color: Colors.yellow[700],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Find nearest event",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            )),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}

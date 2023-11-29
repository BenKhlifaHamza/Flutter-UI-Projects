import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/shopping/fade_animate_shopping.dart';
import 'package:ui_projects/views/widgets/shopping/taille_shoes.dart';

class ShoppingDetailsPage extends StatelessWidget {
  const ShoppingDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    return Scaffold(body: _buildBody(context, arguments));
  }

  Widget _buildBody(BuildContext context, Map<String, dynamic>? arguments) {
    return Stack(
      children: [
        Hero(
          tag: arguments!['tag'],
          child: Image.asset(
            "assets/shopping/${arguments['imageName']}",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 35,
                width: 35,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const Icon(Icons.favorite_outline),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(0),
                ]),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimationShopping(
                      delay: 200,
                      myWidget: Text(
                        "${arguments['title']}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    const FadeAnimationShopping(
                        delay: 300,
                        myWidget: Text(
                          "Size",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const FadeAnimationShopping(
                        delay: 400,
                        myWidget: Row(
                          children: [
                            TailleShoes(
                              taille: "40",
                            ),
                            TailleShoes(
                              taille: "41",
                            ),
                            TailleShoes(
                              taille: "42",
                              active: true,
                            ),
                            TailleShoes(
                              taille: "43",
                            ),
                            TailleShoes(
                              taille: "44",
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 25.0,
                    ),
                    const FadeAnimationShopping(
                        delay: 300,
                        myWidget: Text(
                          "Price",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    FadeAnimationShopping(
                        delay: 400,
                        myWidget: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                "${double.parse(arguments['price']) + 20}\$",
                                style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.white,
                                    decorationThickness: 3,
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                "${double.parse(arguments['price'])}\$",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                    const Spacer(),
                    FadeAnimationShopping(
                      delay: 500,
                      myWidget: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 115, vertical: 7.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ]),
            ))
      ],
    );
  }
}

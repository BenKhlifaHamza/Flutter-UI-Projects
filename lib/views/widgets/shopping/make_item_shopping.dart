import 'package:flutter/material.dart';
import 'package:ui_projects/routes.dart';
import 'package:ui_projects/views/widgets/shopping/fade_animate_shopping.dart';

class MakeItemShopping extends StatelessWidget {
  final String imageName;
  final Object tag;
  final String title;
  final String subTitle;
  final String price;
  const MakeItemShopping(
      {super.key,
      required this.imageName,
      required this.tag,
      required this.title,
      required this.subTitle,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .pushNamed(RoutesNames.shoppingDetails, arguments: {
            "imageName": imageName,
            "tag": tag,
            "title": title,
            "subTitle": subTitle,
            "price": price,
          }),
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/shopping/$imageName")),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(189, 189, 189, 1),
                      blurRadius: 10,
                      offset: Offset(0, 10))
                ]),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(.7),
                  Colors.black.withOpacity(.2),
                ]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeAnimationShopping(
                              delay: 100,
                              myWidget: Text(
                                title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            height: 10.0,
                          ),
                          FadeAnimationShopping(
                              delay: 150,
                              myWidget: Text(
                                subTitle,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )),
                        ],
                      )),
                      Container(
                        height: 35,
                        width: 35,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(Icons.favorite_outline),
                      )
                    ],
                  ),
                  FadeAnimationShopping(
                      delay: 150,
                      myWidget: Text(
                        "$price\$",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}

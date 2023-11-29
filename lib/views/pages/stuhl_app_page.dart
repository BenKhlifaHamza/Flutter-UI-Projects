import 'package:flutter/material.dart';

class StuhlPage extends StatelessWidget {
  const StuhlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Home",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 30,
            width: 36,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: const Text(
              "0",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    List<String> myList = [
      "one.jpg",
      "two.jpg",
      "three.jpg",
      "four.jpg",
      "five.jpg",
      "two.jpg",
      "three.jpg",
      "four.jpg",
      "five.jpg",
    ];
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/stuhl/one.jpg"))),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.2),
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Lifestyle Sale",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.grey[900], fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: myList
                  .map((imageName) => Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 83, 81, 70),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/stuhl/$imageName"))),
                          child: Transform.translate(
                            offset: const Offset(50, -50),
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 65, vertical: 60),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: const Icon(Icons.bookmark_border),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/party/fade_animate_party.dart';
import 'package:ui_projects/views/widgets/party/make_item_party.dart';

class PartyDetailsPage extends StatelessWidget {
  const PartyDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 248, 253, 1),
      appBar: _builAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _builAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.menu),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/party/four.jpg"))),
            child: Transform.translate(
              offset: const Offset(15, -15),
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    shape: BoxShape.circle,
                    color: Colors.yellow[700]),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Search Event",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const FadeAnimationParty(
              delay: 100,
              myWidget:
                  MakeItemParty(imageName: "assets/party/one.jpg", date: "25")),
          const SizedBox(
            height: 20,
          ),
          const FadeAnimationParty(
              delay: 150,
              myWidget:
                  MakeItemParty(imageName: "assets/party/two.jpg", date: "26")),
          const SizedBox(
            height: 20,
          ),
          const FadeAnimationParty(
              delay: 200,
              myWidget: MakeItemParty(
                  imageName: "assets/party/three.jpg", date: "27")),
          const SizedBox(
            height: 20,
          ),
          const FadeAnimationParty(
              delay: 250,
              myWidget: MakeItemParty(
                  imageName: "assets/party/four.jpg", date: "28")),
          const SizedBox(
            height: 20,
          ),
          const FadeAnimationParty(
              delay: 250,
              myWidget: MakeItemParty(
                  imageName: "assets/party/five.jpg", date: "29")),
          const SizedBox(
            height: 20,
          ),
          const FadeAnimationParty(
              delay: 250,
              myWidget:
                  MakeItemParty(imageName: "assets/party/six.jpg", date: "30")),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}

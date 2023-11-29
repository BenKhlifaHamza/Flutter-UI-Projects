import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/profile/fade_animate_profile.dart';
import 'package:ui_projects/views/widgets/profile/make_video_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Stack(children: [
      CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 500,
            leading: const Icon(null),
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              //collapseMode: CollapseMode.pin,
              background: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/profile/emma.jpg"))),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                        Colors.black,
                        Colors.black.withOpacity(.3)
                      ])),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimationProfile(
                            delay: 0,
                            myWidget: Text(
                              "Emma Watson",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            FadeAnimationProfile(
                                delay: 200,
                                myWidget: Text(
                                  "60 Videos",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                )),
                            SizedBox(
                              width: 50,
                            ),
                            FadeAnimationProfile(
                                delay: 300,
                                myWidget: Text(
                                  "240K Suscribes",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FadeAnimationProfile(
                      delay: 600,
                      myWidget: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting",
                        style: TextStyle(height: 1.4, color: Colors.grey),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const FadeAnimationProfile(
                      delay: 600,
                      myWidget: Text(
                        "Born",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const FadeAnimationProfile(
                      delay: 600,
                      myWidget: Text(
                        "April, 15th 1990, Paris, France,",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const FadeAnimationProfile(
                      delay: 600,
                      myWidget: Text(
                        "Nationality",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const FadeAnimationProfile(
                      delay: 600,
                      myWidget: Text(
                        "British",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const FadeAnimationProfile(
                      delay: 600,
                      myWidget: Text(
                        "videos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimationProfile(
                      delay: 800,
                      myWidget: SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            MakeVideoProfile(
                              imageName: 'emma-1.jpg',
                            ),
                            MakeVideoProfile(
                              imageName: 'emma-2.jpg',
                            ),
                            MakeVideoProfile(
                              imageName: 'emma-3.jpg',
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(height: 120)
                ],
              ),
            )
          ]))
        ],
      ),
      Positioned.fill(
          bottom: 50,
          child: FadeAnimationProfile(
              delay: 1000,
              myWidget: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[700]),
                  child: const Text(
                    "Follow",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )))
    ]);
  }
}

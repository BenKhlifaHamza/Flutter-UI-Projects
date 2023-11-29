import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/login%202/fade_animate_login.dart';

class Login2Page extends StatelessWidget {
  const Login2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: FadeAnimationLogin2(
          delay: 100,
          myWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                        top: -5,
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        child: FadeAnimationLogin2(
                            delay: 0,
                            myWidget: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          "assets/login2/background.png"))),
                            ))),
                    Positioned(
                        child: FadeAnimationLogin2(
                            delay: 100,
                            myWidget: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          "assets/login2/background-2.png"))),
                            )))
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          color: Color.fromRGBO(49, 39, 79, 1),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 20,
                                color: Color.fromRGBO(196, 135, 198, .3),
                                offset: Offset(0, 10))
                          ]),
                      child: const Column(
                        children: [
                          TextField(
                            cursorColor: Color.fromRGBO(196, 135, 198, 1),
                            decoration: InputDecoration(
                                labelText: "E-mail or Phone Number",
                                labelStyle: TextStyle(color: Colors.grey),
                                floatingLabelStyle: TextStyle(
                                    color: Color.fromRGBO(196, 135, 198, 1)),
                                border: InputBorder.none),
                          ),
                          Divider(
                            thickness: 0.1,
                            height: 0.5,
                          ),
                          TextField(
                            cursorColor: Color.fromRGBO(196, 135, 198, 1),
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.grey),
                                floatingLabelStyle: TextStyle(
                                    color: Color.fromRGBO(196, 135, 198, 1)),
                                border: InputBorder.none),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        "Forget Password ?",
                        style: TextStyle(
                          color: Color.fromRGBO(196, 135, 198, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 110),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(49, 39, 79, 1)),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}

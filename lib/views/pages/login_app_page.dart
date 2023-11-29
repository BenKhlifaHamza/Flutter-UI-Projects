import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/login/slide_animate_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/login/background.png",
                      ))),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SlideAnimateLogin(
                            delay: 200,
                            myWidget: Image.asset(
                              "assets/login/light-1.png",
                              height: 180,
                              fit: BoxFit.fitHeight,
                            ),
                          )),
                          Expanded(
                              child: SlideAnimateLogin(
                                  delay: 300,
                                  myWidget: Image.asset(
                                    "assets/login/light-2.png",
                                    height: 140,
                                    fit: BoxFit.fitHeight,
                                  ))),
                          Expanded(
                              child: SlideAnimateLogin(
                                  delay: 400,
                                  myWidget:
                                      Image.asset("assets/login/clock.png"))),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, .2),
                        blurRadius: 20,
                        offset: Offset(0, 10))
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "E-mail or phone",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    const Divider(thickness: 0.4, height: 1),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ZoomIn(
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(143, 148, 251, 1),
                          Color.fromRGBO(143, 148, 251, .6),
                        ])),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Forget Password ?",
              style: TextStyle(
                color: Color.fromRGBO(143, 148, 251, 1),
              ),
            ),
          ],
        ),
      );
}

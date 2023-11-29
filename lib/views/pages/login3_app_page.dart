import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/login%203/fade_animate_login3.dart';
import 'package:ui_projects/views/widgets/login%203/forget_text_.dart';
import 'package:ui_projects/views/widgets/login%203/form_login3.dart';
import 'package:ui_projects/views/widgets/login%203/login_button.dart';
import 'package:ui_projects/views/widgets/login%203/social_media_buttons_widget.dart';

class Login3Page extends StatelessWidget {
  const Login3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Color.fromRGBO(230, 81, 0, 1),
        Color.fromRGBO(239, 108, 0, 1),
        Color.fromRGBO(255, 167, 38, 1)
      ])),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 80),
          child: FadeAnimationLogin3(
              delay: 0,
              myWidget: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: FadeAnimationLogin3(
              delay: 100,
              myWidget: Text(
                "Welcome back",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
        ),
        const SizedBox(
          height: 40,
        ),
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  FadeAnimationLogin3(
                    delay: 200,
                    myWidget: FormLogin3Widget(/* FormLogin3Widget */),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ForgetTextLogin3Widget(/* ForgetTextLogin3Widget */),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimationLogin3(
                    delay: 300,
                    myWidget: LoginButtonWidget(/* LoginButtonWidget */),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Continue With social Media",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimationLogin3(
                      delay: 400,
                      myWidget: SocialMediaButtonsWidget(
                          /* SocialMediaButtonsWidget */))
                ],
              ),
            ),
          ),
        ))
      ]),
    );
  }
}

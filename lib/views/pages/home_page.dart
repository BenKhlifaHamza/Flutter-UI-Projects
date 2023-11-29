import 'package:flutter/material.dart';
import 'package:ui_projects/routes.dart';
import 'package:ui_projects/views/widgets/go_to_page_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        "Home Page",
        style: TextStyle(
            color: Colors.indigo, fontSize: 26, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoToPageButton(
                  text: "Inspiration App", pageName: RoutesNames.inspiration),
              GoToPageButton(
                text: "Tripp App",
                pageName: RoutesNames.trip,
              ),
              GoToPageButton(
                text: "Delivery App",
                pageName: RoutesNames.delivery,
              ),
              GoToPageButton(
                text: "Profile App",
                pageName: RoutesNames.profile,
              ),
              GoToPageButton(
                text: "Prty App",
                pageName: RoutesNames.party,
              ),
              GoToPageButton(
                text: "Stuhl App",
                pageName: RoutesNames.stuhl,
              ),
              GoToPageButton(
                text: "Login App",
                pageName: RoutesNames.login,
              ),
              GoToPageButton(
                text: "Login 2 App",
                pageName: RoutesNames.login2,
              ),
              GoToPageButton(
                text: "Login 3 App",
                pageName: RoutesNames.login3,
              ),
              GoToPageButton(
                text: "Shopping App",
                pageName: RoutesNames.shopping,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

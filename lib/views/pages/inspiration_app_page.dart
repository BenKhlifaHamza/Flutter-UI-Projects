import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/inspiration%20widgets/bottom_part_inspiration.dart';
import 'package:ui_projects/views/widgets/inspiration%20widgets/top_part_inspiration.dart';

class InspirationPage extends StatefulWidget {
  const InspirationPage({super.key});

  @override
  State<InspirationPage> createState() => _InspirationPageState();
}

class _InspirationPageState extends State<InspirationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          )),
    );
  }

  Widget _buildBody() {
    return const SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TopPartInspiration(),
          SizedBox(
            height: 20,
          ),
          BottomPartInspiration(),
        ],
      ),
    ));
  }
}

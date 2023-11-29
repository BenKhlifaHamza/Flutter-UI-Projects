import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/delivery/bottom_part_delivery.dart';
import 'package:ui_projects/views/widgets/delivery/middle_part_delivery.dart';
import 'package:ui_projects/views/widgets/delivery/top_part_delivery.dart';

class DeliveryFoodPage extends StatelessWidget {
  const DeliveryFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.grey[100],
      elevation: 0,
      leading: const Icon(null),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_basket),
          color: Colors.grey[800],
        )
      ],
    );
  }

  Widget _buildBody() {
    return const SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopPartDelivery(),
        MiddlePartDelivery(),
        BottomPartDelivery(),
        SizedBox(
          height: 30,
        )
      ],
    ));
  }
}

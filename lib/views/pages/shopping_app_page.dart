import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/shopping/make_item_shopping.dart';
import 'package:ui_projects/views/widgets/shopping/shopping_categorie_widget.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      leading: const Icon(null),
      centerTitle: true,
      title: const Text(
        "Shoes",
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            )),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: ListView(
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.fast),
                scrollDirection: Axis.horizontal,
                children: [
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "All",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                  ),
                  const ShoppingCategorieWidget(title: "Sneakers"),
                  const ShoppingCategorieWidget(title: "FootBall"),
                  const ShoppingCategorieWidget(title: "Soccer"),
                  const ShoppingCategorieWidget(title: "Golf"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const MakeItemShopping(
              imageName: "one.jpg",
              tag: "one",
              title: 'Sneakers',
              subTitle: 'Nike',
              price: '100',
            ),
            const MakeItemShopping(
              imageName: "two.jpg",
              tag: "two",
              title: 'Soccer',
              subTitle: 'Nike',
              price: '80',
            ),
            const MakeItemShopping(
              imageName: "three.jpg",
              tag: "three",
              title: 'Golf',
              subTitle: 'Adidas',
              price: '150',
            ),
          ],
        ),
      ),
    );
  }
}

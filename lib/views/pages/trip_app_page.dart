import 'package:flutter/material.dart';
import 'package:ui_projects/views/widgets/trip/make_page_trip.dart';

class TripPage extends StatefulWidget {
  const TripPage({super.key});

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  // AppBar _buildAppBar() {
  //   return AppBar();
  // }

  Widget _buildBody() {
    return PageView(
      controller: pageController,
      children: const [
        MakePageTrip(
          imageName: "one.jpg",
          title: 'Yosemite National Park',
          description:
              "Yosemite National Park, located in California's Sierra Nevada Mountains, is a natural wonderland renowned for its awe-inspiring granite cliffs, waterfalls, and diverse ecosystems. Covering over 750,000 acres, it offers a sanctuary for outdoor enthusiasts and wildlife lovers alike. Iconic landmarks like El Capitan and Half Dome draw rock climbers and hikers, while its lush valleys and ancient groves of giant sequoias provide a haven for nature enthusiasts. Yosemite's breathtaking landscapes and pristine wilderness make it a treasured gem in the United States' national park system",
          pageIndex: '1',
        ),
        MakePageTrip(
          imageName: "two.jpg",
          title: 'Golden Gate Bridge',
          description:
              "The Golden Gate Bridge, an iconic suspension bridge located in San Francisco, California, is a symbol of engineering marvel and a globally recognized landmark. Spanning 1.7 miles (2.7 kilometers) across the Golden Gate Strait, the bridge is characterized by its distinctive 'International Orange' color. Opened in 1937, it connects San Francisco to Marin County and stands as a testament to both architectural ingenuity and natural beauty. With its stunning views of the San Francisco Bay and the Pacific Ocean, the Golden Gate Bridge is not only a vital transportation link but also a cherished symbol of the City by the Bay",
          pageIndex: '2',
        ),
        MakePageTrip(
          imageName: "three.jpg",
          title: 'Sedona',
          description:
              "Sedona, nestled in the heart of Arizona's red rock country, is a captivating desert town renowned for its stunning natural beauty and spiritual ambiance. The area boasts striking red sandstone formations, such as Cathedral Rock and Bell Rock, which draw hikers and photographers from around the world. Sedona's New Age reputation is evident in its numerous wellness retreats, art galleries, and vortex sites, making it a unique destination for both outdoor enthusiasts and seekers of spiritual enlightenment. The vibrant arts scene, clear night skies, and dramatic landscapes further enhance Sedona's allure.",
          pageIndex: '3',
        ),
        MakePageTrip(
          imageName: "four.jpg",
          title: 'Savannah',
          description:
              "Savannah, Georgia, is a charming coastal city steeped in history and Southern hospitality. Its historic district, with its cobblestone streets and antebellum architecture, exudes old-world charm. Savannah's lush squares, like Forsyth Park, are oases of greenery amidst the historic homes. The city is renowned for its rich cultural heritage, vibrant arts scene, and delectable Southern cuisine. Visitors can explore historic landmarks, such as the Mercer-Williams House, and enjoy riverfront views along the Savannah River. This city's unique blend of history, culture, and natural beauty make it a captivating destination in the American South.",
          pageIndex: '4',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF578383),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: headerSection(context),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: SizedBox(
                width: size.width,
                child: textSection(),
              ),
            ),
            const SizedBox(height: 36),
            bodySection(context),
          ],
        ),
      ),
    );
  }

  Widget headerSection(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu,
          size: 30,
          color: Colors.white70,
        ),
        Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget textSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Discover",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Our majestic world together",
          style: TextStyle(
            color: Colors.white60,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget bodySection(BuildContext context) {
    List<String> imagePaths = [
      'assets/images/bird.jpg',
      'assets/images/cat.jpg',
      'assets/images/cow.jpg',
      'assets/images/dog.jpg',
      'assets/images/horse.jpg',
      'assets/images/lion.jpg',
      'assets/images/rooster.jpg',
    ];

    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(100, 49, 67, 72),
          borderRadius: const BorderRadius.only(
            topRight:
                Radius.circular(16), // Rounded only on the top-right corner
          ),
        ),
        child: Column(
          children: [
            // Loop through the image paths to dynamically create containers
            ...imagePaths.map((imagePath) {
              return Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imagePath),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16), // Space between images
                ],
              );
            }) // Convert iterable to list
          ],
        ),
      ),
    );
  }
}

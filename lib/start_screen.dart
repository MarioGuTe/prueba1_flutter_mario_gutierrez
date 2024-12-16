import 'package:flutter/material.dart';
import 'package:prueba1_flutter_mario_gutierrez/models/animal.dart';
import 'package:prueba1_flutter_mario_gutierrez/details_screen.dart';
import 'package:prueba1_flutter_mario_gutierrez/data/animal_data.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
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
        decoration: const BoxDecoration(
          color: Color.fromARGB(100, 49, 67, 72),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            ...imagePaths.map((imagePath) {
              Animal selectedAnimal = animals.firstWhere(
                (animal) => animal.originalImagePath == imagePath,
                orElse: () => animals[0], // Provide a fallback animal
              );

              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            animal: selectedAnimal,
                          ),
                        ),
                      );
                    },
                    child: Container(
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
                  ),
                  const SizedBox(height: 16),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}

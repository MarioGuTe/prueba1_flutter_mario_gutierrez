import 'package:flutter/material.dart';
import 'package:prueba1_flutter_mario_gutierrez/models/animal.dart';

class DetailsScreen extends StatelessWidget {
  final Animal animal;

  const DetailsScreen({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF578383),
      body: Column(
        children: [
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: headerSection(context),
          ),
          const SizedBox(height: 26),
          imageSection(),
          descriptionSection(),
        ],
      ),
    );
  }

  Widget headerSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget imageSection() {
    return Column(
      children: [
        Text(
          animal.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(animal.imagePath),
            ),
          ),
        ),
      ],
    );
  }

  Widget descriptionSection() {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Text(
        animal.description,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

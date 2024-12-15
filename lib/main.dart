import 'package:flutter/material.dart';
import 'package:prueba1_flutter_mario_gutierrez/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: StartScreen(),
    ),
  );
}



// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             color: Color.fromARGB(213, 57, 82, 83),
//           ),
//           child: Center(
//             child: SafeArea(
//               child: Column(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [Icon(Icons.menu), Icon(Icons.search)],
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     child: Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Discover',
//                             style: TextStyle(
//                                 color: Color(0xFFFFFFFF),
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.w600),
//                           ),
//                           Text(
//                             'Our majestic world together',
//                             style:
//                                 TextStyle(color: Colors.white60, fontSize: 14),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 80),
//                   BodySection(), // Call BodySection widget here
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }


// class BodySection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     return Expanded(
//       child: Align(
//         alignment: Alignment.bottomLeft,
//         child: Container(
//           width: MediaQuery.of(context).size.width * 0.7,
//           padding: const EdgeInsets.all(16),
//           decoration:
//               const BoxDecoration(color: Color.fromARGB(100, 49, 67, 72)),
//         ),
//       ),
//     );
//   }
// }

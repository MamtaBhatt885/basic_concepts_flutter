import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doremon'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          
        ),

        // decoration: BoxDecoration(
        //     boxShadow: const [
        //       BoxShadow(blurRadius: 10, color: Colors.grey, spreadRadius: 5.0)
        //     ],
        //     image: const DecorationImage(
        //         image: AssetImage(
        //           'assets/flower.jpg',
        //         ),
        //         fit: BoxFit.cover),
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

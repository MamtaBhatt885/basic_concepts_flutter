import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Container Sized'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.blue,
              // shape: BoxShape.circle
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(blurRadius: 20, spreadRadius: 5, color: Colors.black)
              ]),
          child: Center(
            child: Container(
              color: Colors.red,
            ),
            //Text(
            //  'Hello',
            // style: TextStyle(fontSize: 20),
          ),
        ),
      ),

      // body: const Center(
      //   child: SizedBox(
      //     height: 20,
      //     child: Text('Hello everyone'),
      //   ),
      // ),
    );
  }
}

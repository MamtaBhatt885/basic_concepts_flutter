import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Stack(children: [
        Positioned(
          top: 100,
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('assets/flower.jpg'), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 20,
          top: 20,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
          ),
        )
      ]),

      // body: Container(
      //   color: Colors.purple,
      //   child: Center(
      //       child: Stack(
      //     children: [
      //       Positioned(
      //         bottom: 10,
      //         left: 20,
      //         child: Container(
      //           height: 300,
      //           width: 300,
      //           color: Colors.yellow,
      //         ),
      //       ),
      //       Center(
      //         child: Container(
      //           height: 150,
      //           width: 150,
      //           color: Colors.red,
      //         ),
      //       ),
      //       Center(
      //         child: Container(
      //           height: 50,
      //           width: 50,
      //           color: Colors.green,
      //         ),
      //       )
      //     ],
      //   )),
      // ),
    );
  }
}

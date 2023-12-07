import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                  height: 500,
                  //color: Colors.yellow.shade500,
                  child: Stack(children: [
                    Positioned(
                        child: Container(
                      decoration: const BoxDecoration(
                          //color: Colors.red,
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/flower2.jpg',
                        ),
                      )),
                      height: 450,
                    )),
                    const Positioned(
                        bottom: 0,
                        right: 10,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/donald2.jpg'),
                          radius: 50,
                        )),
                  ]),
                )),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.blue,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This is a random description of the topic',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowIconText('20', Icons.favorite),
                    rowIconText('34', Icons.upload),
                    rowIconText('82', Icons.message),
                    rowIconText('299', Icons.face),
                  ]),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: const Text(
                  'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(icon),
      ],
    );
  }
}

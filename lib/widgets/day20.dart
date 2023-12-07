import 'package:flutter/material.dart';

class Day20 extends StatelessWidget {
  const Day20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'wanda.s',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 180,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/avatar.jpg'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Wanda S.',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Photographer/NewYork',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    // color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                profileDetails('150', 'Posts'),
                                profileDetails('5K', 'Followers'),
                                profileDetails('150', 'Following')
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.blue)),
                                      onPressed: () {},
                                      child: Text('Follow')),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.arrow_downward,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Container(
              height: 120,
              //color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/flower.jpg'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            color: Colors.orange),
                      ),
                      Text('Title'),
                    ],
                  );
                },
              ),
            ),
            // Container(
            //   height: 100,
            //   color: Colors.green,
            // ),

            Expanded(
              child: Container(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/flower2.jpg'),
                            ),
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width: 150,
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String text1, text2) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 24),
        ),
        Text(
          text2,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}

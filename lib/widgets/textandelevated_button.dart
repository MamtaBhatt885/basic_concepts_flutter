import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                  overlayColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(20),
                  backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              onPressed: () {},
              child: const Text(
                'Press me',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {
                  print('Like');
                },
                child: const Text(
                  'Press me',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

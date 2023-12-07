import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Alert'),
          onPressed: () {
            _showMyDialog(context);
          },
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          scrollable: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('This is an Alert'),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text('This is a demo'),
              Text('This is Mamta Bhatt'),
            ]),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text('Approve')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'))
          ],
        );
      });
}

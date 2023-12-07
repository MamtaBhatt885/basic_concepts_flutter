import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                    action: SnackBarAction(
                      label: 'Undo',
                      textColor: Colors.blue,
                      onPressed: () {},
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    behavior: SnackBarBehavior.floating,
                    //padding: EdgeInsets.all(20),
                    duration: const Duration(milliseconds: 3000),
                    backgroundColor: Colors.black,
                    content: Text('This is a snackbar'));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Show Snackbar')),
        ),
      ),
    );
  }
}

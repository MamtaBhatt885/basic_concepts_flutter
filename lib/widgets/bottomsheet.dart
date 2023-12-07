import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Bottom Sheet Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  elevation: 0,
                  isDismissible: false,
                  enableDrag: true,
                  context: context,
                  builder: (context) {
                    return const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Orange'),
                          subtitle: Text('Mamta'),
                        ),
                        ListTile(
                          title: Text('Apple'),
                          subtitle: Text('Aryan'),
                        ),
                        ListTile(
                          title: Text('Grapes'),
                          subtitle: Text('Priya'),
                        ),
                        ListTile(
                          title: Text('Avocado'),
                          subtitle: Text('Seema'),
                        ),
                        ListTile(
                          title: Text('Guava'),
                          subtitle: Text('Laxmi'),
                        ),
                        ListTile(
                          title: Text('Mango'),
                          subtitle: Text('Dev'),
                        ),
                      ],
                    );
                  });
            },
            child: const Text('Show Bottom Sheet')),
      ),
    );
  }
}

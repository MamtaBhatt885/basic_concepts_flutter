import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana'];
  Map fruits_person = {
    'fruits': ['Orange', 'Apple', 'Mango', 'Banana'],
    'names': ['Mamta', 'Aryan', 'Seema', 'Laxmi']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List and Grid'),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Container(
        child: GridView.builder(
            itemCount: fruits.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(fruits[index]),
                ),
              );
            }),

        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       crossAxisSpacing: 20,
        //       mainAxisSpacing: 20,
        //       childAspectRatio: 2 / 3),
        //   children: const [
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //   ],
        // ),
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: () {
        //           print((fruits_person['fruits'][index]));
        //         },
        //         leading: Icon(Icons.person),
        //         title: Text(fruits_person['fruits'][index]),
        //         subtitle: Text(fruits_person['names'][index]),
        //       ),
      ),
    );
  }
}

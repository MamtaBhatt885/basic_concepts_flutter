import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  // color: Colors.red,
                  padding: const EdgeInsets.all(5),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rock',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('rock@gmail.com'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text('My files'),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text('Sharred with me'),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text('Upload'),
              ),
              Divider(),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Drawer Widget'),
      ),
      body: Container(
        child: const Center(
          child: Text('Hey there'),
        ),
      ),
    );
  }
}

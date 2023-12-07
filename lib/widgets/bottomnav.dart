import 'package:flutter/material.dart';
import 'package:thirty_days_challenge/widgets/alert.dart';
import 'package:thirty_days_challenge/widgets/dismissible.dart';
import 'package:thirty_days_challenge/widgets/rowscols.dart';
import 'package:thirty_days_challenge/widgets/snackbar.dart';

class BottomeNav extends StatefulWidget {
  const BottomeNav({super.key});

  @override
  State<BottomeNav> createState() => _BottomeNavState();
}

class _BottomeNavState extends State<BottomeNav> {
  int selectedindex = 0;
  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Nav"),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DismissibleWidget(),
          RowsCols(),
          SnackBarWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        onTap: onTapped,
      ),
    );
  }
}

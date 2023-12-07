import 'package:flutter/material.dart';
import 'package:thirty_days_challenge/widgets/alert.dart';
import 'package:thirty_days_challenge/widgets/animated_text_widget.dart';
import 'package:thirty_days_challenge/widgets/bottomnav.dart';
import 'package:thirty_days_challenge/widgets/bottomsheet.dart';
import 'package:thirty_days_challenge/widgets/day19ui.dart';
import 'package:thirty_days_challenge/widgets/day20.dart';
import 'package:thirty_days_challenge/widgets/drawer.dart';
import 'package:thirty_days_challenge/widgets/dropdown.dart';
import 'package:thirty_days_challenge/widgets/form.dart';
import 'package:thirty_days_challenge/widgets/image.dart';
import 'package:thirty_days_challenge/widgets/imagepicker.dart';
import 'package:thirty_days_challenge/widgets/listview_gridview.dart';
import 'package:thirty_days_challenge/widgets/dismissible.dart';
import 'package:thirty_days_challenge/widgets/container_sized.dart';
import 'package:thirty_days_challenge/widgets/rowscols.dart';
import 'package:thirty_days_challenge/widgets/snackbar.dart';
import 'package:thirty_days_challenge/widgets/stack.dart';
import 'package:thirty_days_challenge/widgets/tabbar.dart';
import 'package:thirty_days_challenge/widgets/textandelevated_button.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.purple),
      home:Day20 (),
      debugShowCheckedModeBanner: false,
    );
  }
}

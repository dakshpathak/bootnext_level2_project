import 'package:bootnext_level2_project/mainscreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const BootNext());
}

class BootNext extends StatelessWidget {
  const BootNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainScreen(),
      theme: ThemeData(

      ),
    );
  }
}


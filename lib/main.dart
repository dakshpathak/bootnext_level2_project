import 'package:bootnext_level2_project/screens/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(const BootNext());
}

class BootNext extends StatelessWidget {
  const BootNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            home: const HomePage(),
          );
        }
    );
  }
}


import 'dart:async';

import 'package:bootnext_level2_project/screens/mainscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const HomePage()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      color: Colors.white,
      child: Image.network('https://bootnext.io/wp-content/uploads/2021/08/BootNext-2.png')
    );
  }
}
//Image.network('https://bootnext.io/wp-content/uploads/2021/08/BootNext-2.png' )
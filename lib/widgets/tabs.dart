import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//This is a custom tab bar class which takes tabIcon and tabText from the user and returns a tab.

class CustomTab extends StatelessWidget {
  final IconData tabIcon;
  final String tabText;

  CustomTab(this.tabIcon, this.tabText, {Key? key}) : super(key: key)  ;

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(
        tabIcon,
        color: Colors.grey,
        size: 21.h,
      ),
      child: Text(
        tabText,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

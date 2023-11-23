import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTab extends StatelessWidget {
  IconData tabIcon;
  String tabText;
  CustomTab(this.tabIcon,  this.tabText,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(tabIcon, color: Colors.grey,size: 21.h,),
      child: Text(tabText, style: const TextStyle(color: Colors.grey),),

    );
  }
}

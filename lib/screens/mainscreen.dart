import 'package:bootnext_level2_project/widgets/chartValues.dart';
import 'package:bootnext_level2_project/widgets/linechart.dart';
import 'package:bootnext_level2_project/widgets/tabs.dart';
import 'package:bootnext_level2_project/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.h,
        backgroundColor: Colors.transparent,
        title: Text(
          "Dynamic Screen",
          style: TextStyle(color: Colors.black, fontSize: 21.sp),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.security, color: Colors.grey),
              label: "warehouse"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.security,
                color: Colors.grey,
              ),
              label: "Team"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.security,
                color: Colors.grey,
              ),
              label: "Issue"),
          BottomNavigationBarItem(
              icon: Icon(Icons.security, color: Colors.grey), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.security, color: Colors.grey), label: "Project"),
        ],
        unselectedFontSize: 10.h,
        elevation: 20.h,
        iconSize: 23.h,
        showSelectedLabels: true,
        selectedItemColor: Colors.grey,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 5.w, right: 7.w),
        child: Column(
          children: [
            TabBar(
                isScrollable: true,
                physics: const BouncingScrollPhysics(),
                controller: _tabController,
                tabs: [
                  CustomTab(Icons.security, "Warehouse"),
                  CustomTab(Icons.security, "Team"),
                  CustomTab(Icons.security, "Issue"),
                  CustomTab(Icons.security, "Profile"),
                  CustomTab(Icons.security, "Project"),
                ]),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      alignment: Alignment.center,
                      // color: Colors.black45,
                      child: LineChartWidget(priceData),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 1.h,
                            color: Colors.white,
                            shape: const RoundedRectangleBorder(),
                            shadowColor: Colors.black,
                            child: const ListTile(
                              title: Text("Bootnext"),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    // alignment: Alignment.center,
                    color: Colors.black45,
                    width: 6.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      elevation: 4.h,
                      fixedSize: Size(40.w, 60.h),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.grey[300]),
                  onPressed: () {},
                  child: CustomText(
                    text: 'Button',
                    color: Colors.black54,
                    size: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Container(
                    height: 4.h,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 4.h,
                      fixedSize: Size(40.w, 60.h),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.grey[300]),
                  onPressed: () {},
                  child: CustomText(
                    text: 'Button',
                    color: Colors.black54,
                    size: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}

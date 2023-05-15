import 'package:flutter/material.dart';
import 'package:internship2/Providers/scheme_selector.dart';
import 'package:internship2/Providers/custom_animated_bottom_bar.dart';
import 'package:internship2/Providers/_buildBottomBar.dart';
import '../../models/views/displayed_data.dart';

class due extends StatefulWidget {
  static const id = '/due';
  @override
  State<due> createState() => _dueState();
}

class _dueState extends State<due> {
  int _currentIndex = 1;
  int _currentscheme = 0;
  final _inactiveColor = Color(0xffEBEBEB);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff144743),
          ),
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Container(
                width: size.width * 0.60,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                    color: Color(0XFFEBEBEB),
                    borderRadius: BorderRadius.circular(18)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0XFF999999),
                      ),
                      hintText: 'Search',
                      border: InputBorder.none),
                ),
              ),
              IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  // height: size.height * 0.09,
                  // width: size.width * 0.09,
                  icon: Image.asset('assets/Acc/trailing.png'))
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              width: 82,
              height: 21,
              color: Color(0x35979797),
            ),
            SizedBox(
              width: 9,
              height: 26,
              child: Text(
                "8",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: "IBM Plex Sans Thai Looped",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              width: 9,
              height: 26,
              child: Text(
                "9",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: "IBM Plex Sans Thai Looped",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              "Ashish Jain",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              width: 117,
              height: 27,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xffd83f51),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Due",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xfffcfdfc),
                      fontSize: 12,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 157,
              child: Text(
                "987654320987",
                style: TextStyle(
                  color: Color(0xaa870010),
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 157,
              child: Text(
                "DOO",
                style: TextStyle(
                  color: Color(0xffaf545f),
                  fontSize: 11,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 157,
              child: Text(
                "10/06/23",
                style: TextStyle(
                  color: Color(0xaa000000),
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 135,
              child: Text(
                "CASH             ONLINE",
                style: TextStyle(
                  color: Color(0xaa000000),
                  fontSize: 10,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 135,
              child: Text(
                "100",
                style: TextStyle(
                  color: Color(0xffd83f51),
                  fontSize: 10,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 157,
              child: Text(
                "DOM",
                style: TextStyle(
                  color: Color(0xffaf545f),
                  fontSize: 11,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 157,
              child: Text(
                "10/06/27",
                style: TextStyle(
                  color: Color(0xaa000000),
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 60,
              child: Text(
                "Balance",
                style: TextStyle(
                  color: Color(0xffaf545f),
                  fontSize: 11,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 176,
              child: Text(
                "1300/-",
                style: TextStyle(
                  color: Color(0xaa000000),
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 157,
              child: Text(
                "+",
                style: TextStyle(
                  color: Color(0xaa000000),
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 2,
              child: Transform.rotate(
                angle: 3.14,
                child: Text(
                  "-",
                  style: TextStyle(
                    color: Color(0xaa000000),
                    fontSize: 12,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              width: 35,
              height: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0x19000000),
                  width: 1,
                ),
                color: Color(0xff4aa8a0),
              ),
            ),
            Container(
              width: 35,
              height: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0x19000000),
                  width: 1,
                ),
              ),
            ),
            Container(
              width: 35,
              height: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0x19000000),
                  width: 1,
                ),
              ),
            ),
            Container(
              width: 35,
              height: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0x19000000),
                  width: 1,
                ),
              ),
            ),
            Container(
              width: 35,
              height: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0x19000000),
                  width: 1,
                ),
              ),
            ),
            Container(
              width: 14,
              height: 12,
              child: FlutterLogo(size: 12),
            ),
            Container(
              width: 14,
              height: 12,
              child: FlutterLogo(size: 12),
            ),
            Container(
              width: 20,
              height: 16,
              child: FlutterLogo(size: 16),
            ),
            Container(
              width: 14,
              height: 12,
              child: FlutterLogo(size: 12),
            ),
            Container(
              width: 14,
              height: 14,
              child: FlutterLogo(size: 14),
            ),
            Container(
              width: 16,
              height: 9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffd9d9d9),
              ),
            ),
            Container(
              width: 11,
              height: 9.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff1e8828),
              ),
            ),
            Container(
              width: 63,
              height: 21,
              color: Color(0x35979797),
            ),
            SizedBox(
              width: 157,
              child: Text(
                "Monthly",
                style: TextStyle(
                  color: Color(0xffaf545f),
                  fontSize: 11,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 157,
              child: Text(
                "1000/-",
                style: TextStyle(
                  color: Color(0xaa000000),
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 157,
              child: Text(
                "4/12",
                style: TextStyle(
                  color: Color(0xaa000000),
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        )
        // Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.all(
        //             Radius.circular(40),
        //           ),
        //           border: Border.all(
        //             width: 3,
        //             color: Colors.grey,
        //             style: BorderStyle.solid,
        //           ),
        //         ),
        //         child: _buildAboveBar(),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(left: 12.0),
        //       child: Row(
        //         children: [
        //           Text(
        //             'Chiran Road',
        //             style: TextStyle(
        //               fontSize: 13.5,
        //               color: Color(0xff205955),
        //               fontWeight: FontWeight.w500,
        //             ),
        //             textAlign: TextAlign.left,
        //           ),
        //           // Text(
        //           //   'Chiran Road',
        //           //   textAlign: TextAlign.left,
        //           // ),
        //         ],
        //       ),
        //     ),
        //     displayeddata(size: size),
        //     displayeddata(size: size),
        //     Padding(
        //       padding: const EdgeInsets.only(left: 12.0),
        //       child: Row(
        //         children: [
        //           Text(
        //             'Rewa Road',
        //             style: TextStyle(
        //               fontSize: 13.5,
        //               color: Color(0xff205955),
        //               fontWeight: FontWeight.w500,
        //             ),
        //             textAlign: TextAlign.left,
        //           ),
        //           // Text(
        //           //   'Chiran Road',
        //           //   textAlign: TextAlign.left,
        //           // ),
        //         ],
        //       ),
        //     ),
        //     displayeddata(size: size),
        //   ],
        // ),
        // bottomNavigationBar: buildBottomBar(),
        );
  }
  //
  // Widget _buildBottomBar() {
  //   Size size = MediaQuery.of(context).size;
  //   return CustomAnimatedBottomBar(
  //     rute: '/acc_master',
  //     containerHeight: size.height * 0.09,
  //     backgroundColor: Colors.white,
  //     selectedIndex: _currentscheme,
  //     showElevation: true,
  //     itemCornerRadius: 24,
  //     curve: Curves.easeIn,
  //     onItemSelected: (index) => setState(() => _currentscheme = index),
  //     items: <BottomNavyBarItem>[
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.account_circle_rounded),
  //         activeColor: Color(0xff32B9AE),
  //         inactiveColor: _inactiveColor,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.search_rounded),
  //         activeColor: Color(0xff32B9AE),
  //         inactiveColor: _inactiveColor,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.home_filled),
  //         activeColor: Color(0xff32B9AE),
  //         inactiveColor: _inactiveColor,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.event_note_sharp),
  //         activeColor: Color(0xff32B9AE),
  //         inactiveColor: _inactiveColor,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.account_balance),
  //         activeColor: Color(0xff32B9AE),
  //         inactiveColor: _inactiveColor,
  //       ),
  //     ],
  //   );
  // }

  Widget _buildAboveBar() {
    Size size = MediaQuery.of(context).size;
    return CustomAnimatedAboveBar(
      containerHeight: size.height * 0.07,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <AboveNavyBarItem>[
        AboveNavyBarItem(
          alpha: 'All',
          activeColor: Colors.grey,
          inactiveColor: _inactiveColor,
        ),
        AboveNavyBarItem(
          alpha: 'A',
          activeColor: Colors.grey,
          inactiveColor: _inactiveColor,
        ),
        AboveNavyBarItem(
          alpha: 'B',
          activeColor: Colors.grey,
          inactiveColor: _inactiveColor,
        ),
      ],
    );
  }
}

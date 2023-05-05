import 'package:flutter/material.dart';
import 'package:internship2/Providers/scheme_selector.dart';
import 'package:internship2/Providers/custom_animated_bottom_bar.dart';
import 'package:internship2/Providers/_buildBottomBar.dart';
import '../../models/views/displayed_data.dart';

class acc_master extends StatefulWidget {
  static const routename = '/acc_master';
  @override
  State<acc_master> createState() => _acc_masterState();
}

class _acc_masterState extends State<acc_master> {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                border: Border.all(
                  width: 3,
                  color: Colors.grey,
                  style: BorderStyle.solid,
                ),
              ),
              child: _buildAboveBar(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Text(
                  'Chiran Road',
                  style: TextStyle(
                    fontSize: 13.5,
                    color: Color(0xff205955),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
                // Text(
                //   'Chiran Road',
                //   textAlign: TextAlign.left,
                // ),
              ],
            ),
          ),
          displayeddata(size: size),
          displayeddata(size: size),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Text(
                  'Rewa Road',
                  style: TextStyle(
                    fontSize: 13.5,
                    color: Color(0xff205955),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
                // Text(
                //   'Chiran Road',
                //   textAlign: TextAlign.left,
                // ),
              ],
            ),
          ),
          displayeddata(size: size),
        ],
      ),
      bottomNavigationBar: buildBottomBar(),
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

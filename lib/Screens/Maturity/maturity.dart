import 'package:flutter/material.dart';
import 'package:internship2/Providers/month_selector.dart';
import 'package:internship2/Providers/custom_animated_bottom_bar.dart';
import 'package:internship2/Providers/_buildBottomBar.dart';
import '../../models/views/maturity_display.dart';
import 'package:internship2/Screens/Menu.dart';

class maturity extends StatefulWidget {
  static const id = '/maturity';
  @override
  State<maturity> createState() => _maturityState();
}

class _maturityState extends State<maturity> {
  int _currentIndex = 1;
  final _inactiveColor = Color(0xffEBEBEB);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const menu()),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff144743),
          ),
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
          SingleChildScrollView(
            child: Padding(
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
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.23,
            child: maturity_data(size: size),
          ),
          Container(
            height: size.height * 0.23,
            child: maturity_data(size: size),
          ),
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
              ],
            ),
          ),
          // Container(
          //   height: size.height * 0.23,
          //   child: due_data(size: size),
          // ),
        ],
      ),
      bottomNavigationBar: buildBottomBar(),
    );
  }

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
          alpha: 'CurrentMonth',
          activeColor: Colors.grey,
          inactiveColor: _inactiveColor,
        ),
        AboveNavyBarItem(
          alpha: '3 months',
          activeColor: Colors.grey,
          inactiveColor: _inactiveColor,
        ),
        AboveNavyBarItem(
          alpha: '6 Months',
          activeColor: Colors.grey,
          inactiveColor: _inactiveColor,
        ),
        AboveNavyBarItem(
          alpha: '1 Year',
          activeColor: Colors.grey,
          inactiveColor: _inactiveColor,
        ),
      ],
    );
  }
}

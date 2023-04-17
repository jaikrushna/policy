import 'package:flutter/material.dart';
import 'package:internship2/Providers/scheme_selector.dart';
import 'package:internship2/Providers/custom_animated_bottom_bar.dart';

class acc_master extends StatefulWidget {
  const acc_master({Key? key}) : super(key: key);

  @override
  State<acc_master> createState() => _acc_masterState();
}

class _acc_masterState extends State<acc_master> {
  int _currentIndex = 1;
  int _currentscheme = 0;
  final _inactiveColor = Color(0xff71757A);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                  color: Colors.grey, borderRadius: BorderRadius.circular(18)),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
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
          Container(
            child: Flexible(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'Chiran Road',
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ashish Jain'),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                            border: Border.all(
                              width: 2,
                              color: Colors.green,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('May 2007'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('9876543210'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('DAILY'),
                                SizedBox(
                                  width: size.width * 0.06,
                                ),
                                Text('100/-')
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('DOO'),
                                SizedBox(
                                  width: size.width * 0.03,
                                ),
                                Text('10/06/23')
                              ],
                            ),
                            Row(
                              children: [
                                Text('DOM'),
                                SizedBox(
                                  width: size.width * 0.03,
                                ),
                                Text('10/06/27')
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              padding: EdgeInsets.all(8.0),
                              constraints: BoxConstraints(minWidth: 20),
                              onPressed: () {},
                              child: Icon(Icons.request_page),
                              elevation: 2.0,
                              fillColor: Colors.green,
                              shape: CircleBorder(),
                            ),
                            RawMaterialButton(
                              padding: EdgeInsets.all(8.0),
                              constraints: BoxConstraints(minWidth: 20),
                              onPressed: () {},
                              child: Icon(Icons.request_page),
                              elevation: 2.0,
                              fillColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                            RawMaterialButton(
                              padding: EdgeInsets.all(8.0),
                              constraints: BoxConstraints(minWidth: 20),
                              onPressed: () {},
                              child: Icon(Icons.request_page),
                              elevation: 2.0,
                              fillColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                            RawMaterialButton(
                              padding: EdgeInsets.all(8.0),
                              constraints: BoxConstraints(minWidth: 20),
                              onPressed: () {},
                              child: Icon(Icons.request_page),
                              elevation: 2.0,
                              fillColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                            RawMaterialButton(
                              padding: EdgeInsets.all(8.0),
                              constraints: BoxConstraints(minWidth: 20),
                              onPressed: () {},
                              child: Icon(Icons.request_page),
                              elevation: 2.0,
                              fillColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.7,
                    height: 0.02,
                  )
                ],
              ),
            )),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    Size size = MediaQuery.of(context).size;
    return CustomAnimatedBottomBar(
      containerHeight: size.height * 0.09,
      backgroundColor: Colors.white,
      selectedIndex: _currentscheme,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentscheme = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.account_circle_rounded),
          activeColor: Color(0xff32B9AE),
          inactiveColor: _inactiveColor,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.search_rounded),
          activeColor: Color(0xff32B9AE),
          inactiveColor: _inactiveColor,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.home_filled),
          activeColor: Color(0xff32B9AE),
          inactiveColor: _inactiveColor,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.event_note_sharp),
          activeColor: Color(0xff32B9AE),
          inactiveColor: _inactiveColor,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.account_balance),
          activeColor: Color(0xff32B9AE),
          inactiveColor: _inactiveColor,
        ),
      ],
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

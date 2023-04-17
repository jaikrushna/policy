import 'package:internship2/Providers/custom_animated_bottom_bar.dart';
import 'package:flutter/material.dart';

class place extends StatefulWidget {
  const place({Key? key}) : super(key: key);

  @override
  State<place> createState() => _placeState();
}

class _placeState extends State<place> {
  int _currentIndex = 0;
  bool sel = true;
  bool notsel = true;
  final _inactiveColor = Color(0xff71757A);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Color(0xff144743),
        ),
        title: Text(
          'Place',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: size.height * 0.005,
          ),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              onTap: () {
                if (sel == true) {
                  sel = false;
                  setState(() {});
                } else {
                  sel == true;
                  setState(() {});
                }
              },
              selected: sel,
              focusColor: Color(0xffA9C8C5),
              tileColor: Colors.white,
              selectedTileColor: Color(0xffA9C8C5),
              leading: Container(
                child: Image.asset('assets/house-line-fill 1.png'),
              ),
              trailing: CircleAvatar(
                backgroundColor: sel ? Color(0xffD9D9D9F) : Color(0xff29756F),
                child: Text(
                  '40',
                  style: TextStyle(
                    color: sel ? Colors.black : Colors.white60,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Center(
                child: Text(
                  'Chiran Road',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              onTap: () {
                if (sel == true) {
                  sel = false;
                  setState(() {});
                } else {
                  sel == true;
                  setState(() {});
                }
              },
              selected: false,
              focusColor: Color(0xffA9C8C5),
              tileColor: Colors.white,
              selectedTileColor: Color(0xffA9C8C5),
              leading: Container(
                child: Image.asset('assets/house-line-fill 1.png'),
              ),
              trailing: CircleAvatar(
                backgroundColor: Color(0xff29756F),
                child: Text(
                  '40',
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Center(
                child: Text(
                  'Chiran Road',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              selected: false,
              focusColor: Color(0xffA9C8C5),
              tileColor: Colors.white,
              selectedTileColor: Color(0xffA9C8C5),
              leading: Container(
                child: Image.asset('assets/house-line-fill 1.png'),
              ),
              trailing: CircleAvatar(
                backgroundColor: Color(0xff29756F),
                child: Text(
                  '40',
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Center(
                child: Text(
                  'Chiran Road',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              selected: false,
              focusColor: Color(0xffA9C8C5),
              tileColor: Colors.white,
              selectedTileColor: Color(0xffA9C8C5),
              leading: Container(
                child: Image.asset('assets/house-line-fill 1.png'),
              ),
              trailing: CircleAvatar(
                backgroundColor: Color(0xff29756F),
                child: Text(
                  '40',
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Center(
                child: Text(
                  'Rea Road',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: Container(
        width: size.width * 0.45,
        child: FloatingActionButton(
          onPressed: () {},
          child: Text(
            'Create Place',
          ),
          backgroundColor: Color(0xff29756F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
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
}

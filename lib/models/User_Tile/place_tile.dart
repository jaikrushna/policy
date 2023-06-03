import 'package:flutter/material.dart';

class place_tile extends StatefulWidget {
  place_tile(this.Name);
  String Name;
  @override
  State<place_tile> createState() => _place_tileState(Name);
}

class _place_tileState extends State<place_tile> {
  _place_tileState(
    this.Name,
  );
  // bool selected = false;
  late String Name;
  bool sel = true;
  bool notsel = true;
  final _inactiveColor = Color(0xff71757A);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
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
              '$Name',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:internship2/Screens/Collection/collection2.dart';
import 'package:internship2/Screens/Place/usersearch.dart';
import 'package:internship2/Screens/Account/Account_Master.dart';

class collection_tile extends StatelessWidget {
  collection_tile(this.Name, this.screen);
  late String Name;
  int screen = 1;
  late Widget path;
  @override
  Widget build(BuildContext context) {
    if (screen == 0)
      path = acc_master(Name);
    else if (screen == 1) path = collection2(Name);
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.009,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => path),
            );
          },
          selected: false,
          focusColor: Color(0xffA9C8C5),
          tileColor: Colors.white,
          selectedTileColor: Color(0xffA9C8C5),
          leading: Container(
            child: Image.asset('assets/place_edit/h3.png'),
          ),
          title: Text(
            '$Name',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

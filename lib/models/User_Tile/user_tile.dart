import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class user_tile extends StatefulWidget {
  final String Username;
  final String amt_rem;
  user_tile(
    @required this.Username,
    @required this.amt_rem,
  );
  @override
  State<user_tile> createState() => _user_tileState();
}

class _user_tileState extends State<user_tile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        selected: true,
        focusColor: Color(0xff53927B),
        tileColor: Colors.white,
        selectedTileColor: Color(0xff53927B),
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          height: size.height * 0.1,
          width: size.width * 0.14,
          child: Center(
            child: Text(
              '${widget.Username[0]}',
              style: TextStyle(
                  color: Color(0xff29756F),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.expand_circle_down_rounded,
              color: Colors.white,
            )),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: Text(
          '${widget.Username}',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          '${widget.amt_rem}/Month',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}

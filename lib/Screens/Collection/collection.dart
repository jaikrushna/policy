import 'package:internship2/Providers/custom_animated_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:internship2/Screens/place_edit.dart';
import 'package:internship2/Providers/_buildBottomBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:internship2/models/User_Tile/place_tile.dart';
import 'package:internship2/Screens/Menu.dart';
import 'package:internship2/Screens/Collection/collection2.dart';

class collection extends StatefulWidget {
  const collection({Key? key}) : super(key: key);
  static const id = '/collection';

  @override
  State<collection> createState() => _collectionState();
}

class _collectionState extends State<collection> {
  final _firestone = FirebaseFirestore.instance;
  late String Name;
  int _currentIndex = 0;
  var _isloading = false;
  bool sel = true;
  bool notsel = true;
  final _inactiveColor = Color(0xff71757A);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        title: Text(
          ' Your Place',
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
          StreamBuilder(
              stream: _firestone
                  .collection('new_place')
                  .orderBy('Name')
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                  );
                }
                final tiles = snapshot.data!.docs;
                List<Widget> Memberlist = [];
                for (var tile in tiles) {
                  Name = tile.get('Name');
                  Memberlist.add(place_tile(Name));
                }
                return _isloading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        children: [
                          SizedBox(
                              height: size.height,
                              child: ListView.builder(
                                itemCount: Memberlist.length,
                                itemBuilder: (context, i) => Memberlist[i],
                              )),
                        ],
                      );
              })
        ]),
      ),
      bottomNavigationBar: buildBottomBar(),
    );
  }
}

import 'package:internship2/Providers/custom_animated_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:internship2/Screens/Place/place_edit.dart';
import 'package:internship2/Providers/_buildBottomBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:internship2/models/User_Tile/place_tile.dart';
import 'package:internship2/Screens/Menu.dart';
import 'package:internship2/Screens/Collection/collection2.dart';
import 'package:internship2/models/User_Tile/collection_tile.dart';
import 'package:internship2/models/User_Tile/acc_tile.dart';

class acc_screen extends StatefulWidget {
  acc_screen(this.screen);
  static const id = '/acc_master1';
  int screen = 0;
  @override
  State<acc_screen> createState() => _acc_screenState(screen);
}

class _acc_screenState extends State<acc_screen> {
  _acc_screenState(this.screen);
  int screen = 0;
  late int Count = 0;
  late int Amount = 0;
  final _firestone = FirebaseFirestore.instance;
  late String Name;
  int _currentIndex = 0;
  var _isloading = false;
  bool sel = true;
  bool notsel = true;
  final _inactiveColor = Color(0xff71757A);
  void strm(String Name) {
    StreamBuilder(
        stream: _firestone
            .collection('new_account')
            .doc(Name)
            .collection(Name)
            .orderBy('Name')
            .snapshots(),
        builder: (context, snapshot) {
          final tiles = snapshot.data!.docs;
          Count = snapshot.data!.docs.length;
          for (var tile in tiles) {
            Amount += int.parse(tile.get('Amount_Remaining'));
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Clients:$Count'),
              Text('Amount Collected:$Amount')
            ],
          );
        });
  }

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
                  Memberlist.add(acc_tile(Name, screen));
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

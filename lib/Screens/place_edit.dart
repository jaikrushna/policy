import 'package:flutter/material.dart';
import 'package:internship2/Screens/usersearch.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:internship2/models/User_Tile/place_edit_tile.dart';

class placeedit extends StatefulWidget {
  const placeedit({Key? key}) : super(key: key);
  static const id1 = '/placeedit';
  @override
  State<placeedit> createState() => _placeeditState();
}

class _placeeditState extends State<placeedit> {
  late String place_name;
  late String place_posted;
  var _isloading = false;
  final _firestone = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff144743),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Place',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            IconButton(
                iconSize: 50,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Flexible(
                          child: Container(
                            color: Color(0xffBBF5F1),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(children: [
                                    SizedBox(height: 16.0),
                                    Image.asset(
                                      'assets/Line 8.png',
                                    ),
                                    SizedBox(width: 16.0),
                                    Text(
                                      'New Place',
                                      style:
                                          TextStyle(color: Color(0xff205955)),
                                    ),
                                  ]),
                                  SizedBox(height: 16.0),
                                  TextField(
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                      textAlign: TextAlign.left,
                                      onChanged: (value) {
                                        place_posted = value;
                                        setState(() {});
                                      },
                                      decoration: InputDecoration(
                                          hintText: 'Place Name')),
                                  SizedBox(height: 16.0),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff29756F), // Text color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0)),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 8.0), // Button padding
                                    ),
                                    onPressed: () {
                                      _firestone.collection('new_place').add({
                                        'Name': place_posted,
                                      });
                                      setState(() {
                                        Navigator.of(context).pop();
                                      });
                                      // Perform actions here
                                      // Close the bottom sheet
                                    },
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                // height: size.height * 0.09,
                // width: size.width * 0.09,
                icon: Image.asset('assets/app_pen.png'))
          ],
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
                  place_name = tile.get('Name');
                  Memberlist.add(place_edit_tile(place_name));
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
      // floatingActionButton: Container(
      //   width: size.width * 0.9,
      //   child: FloatingActionButton(
      //     onPressed: () {
      //   showModalBottomSheet(
      //       context: context,
      //       builder: (context) {
      //         return Flexible(
      //           child: Container(
      //             color: Color(0xffBBF5F1),
      //             child: Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Column(
      //                 mainAxisSize: MainAxisSize.min,
      //                 children: [
      //                   Row(children: [
      //                     SizedBox(height: 16.0),
      //                     Image.asset(
      //                       'assets/Line 8.png',
      //                     ),
      //                     SizedBox(width: 16.0),
      //                     Text(
      //                       'New Place',
      //                       style: TextStyle(color: Color(0xff205955)),
      //                     ),
      //                   ]),
      //                   SizedBox(height: 16.0),
      //                   TextField(
      //                       style: TextStyle(
      //                         color: Colors.black87,
      //                       ),
      //                       textAlign: TextAlign.left,
      //                       onChanged: (value) {
      //                         place_posted = value;
      //                         setState(() {});
      //                       },
      //                       decoration:
      //                           InputDecoration(hintText: 'Place Name')),
      //                   SizedBox(height: 16.0),
      //                   ElevatedButton(
      //                     style: ElevatedButton.styleFrom(
      //                       primary: Color(0xff29756F), // Text color
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius:
      //                             BorderRadius.all(Radius.circular(15.0)),
      //                       ),
      //                       padding: EdgeInsets.symmetric(
      //                           horizontal: 16.0,
      //                           vertical: 8.0), // Button padding
      //                     ),
      //                     onPressed: () {
      //                       _firestone.collection('new_place').add({
      //                         'Name': place_posted,
      //                       });
      //                       setState(() {
      //                         Navigator.of(context).pop();
      //                       });
      //                       // Perform actions here
      //                       // Close the bottom sheet
      //                     },
      //                     child: Text(
      //                       'Save',
      //                       style: TextStyle(
      //                         color: Colors.black87,
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         );
      //       });
      // },
      // child: Text(
      //   'Create Place',
      // ),
      //   backgroundColor: Color(0xff29756F),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(15.0)),
      //   ),
      // ),
      // ),
    );
  }
}

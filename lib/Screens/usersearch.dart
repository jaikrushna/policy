import 'package:internship2/Providers/custom_animated_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:internship2/Screens/newmember.dart';
import 'package:internship2/models/User_Tile/user_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class user extends StatefulWidget {
  const user({Key? key}) : super(key: key);
  static const id = 'user';
  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  late String Username;
  late String User_Amt;
  final _firestone = FirebaseFirestore.instance;
  var _isloading = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Container(
          width: double.infinity,
          height: size.height * 0.05,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(18)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
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
                  .collection('new_account')
                  .orderBy('Member_Name')
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
                  Username = tile.get('Member_Name');
                  User_Amt = tile.get('Amount_Remaining');
                  Memberlist.add(user_tile(Username, User_Amt));
                }
                return _isloading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemBuilder: (context, i) => Memberlist[i],
                      );
                // ;
                // return Flexible(
                //   child: ListView.builder(
                //     itemBuilder: (context, i) => Memberlist[i],
                //   ),
                // );
              })
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //     selected: true,
          //     focusColor: Color(0xff53927B),
          //     tileColor: Colors.white,
          //     selectedTileColor: Color(0xff53927B),
          //     leading: Container(
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //       height: size.height * 0.1,
          //       width: size.width * 0.14,
          //       child: Center(
          //         child: Text(
          //           'A',
          //           style: TextStyle(
          //               color: Color(0xff29756F),
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20),
          //         ),
          //       ),
          //     ),
          //     trailing: IconButton(
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.expand_circle_down_rounded,
          //           color: Colors.white,
          //         )),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(15),
          //     ),
          //     title: Text(
          //       'Ashish Jain',
          //       style: TextStyle(
          //         color: Colors.black,
          //       ),
          //     ),
          //     subtitle: Text(
          //       '6000/Month',
          //       style: TextStyle(color: Colors.grey),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //     selected: false,
          //     focusColor: Color(0xff53927B),
          //     tileColor: Colors.white,
          //     selectedTileColor: Color(0xff53927B),
          //     leading: Container(
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //       height: size.height * 0.1,
          //       width: size.width * 0.14,
          //       child: Center(
          //         child: Text(
          //           'C',
          //           style: TextStyle(
          //               color: Color(0xff29756F),
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20),
          //         ),
          //       ),
          //     ),
          //     trailing: IconButton(
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.expand_circle_down_rounded,
          //           color: Colors.white,
          //         )),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(15),
          //     ),
          //     title: Text(
          //       'Chetan Bhagat',
          //       style: TextStyle(
          //         color: Colors.black,
          //       ),
          //     ),
          //     subtitle: Text(
          //       '6000/Month',
          //       style: TextStyle(color: Colors.grey),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //     selected: false,
          //     focusColor: Color(0xff53927B),
          //     tileColor: Colors.white,
          //     selectedTileColor: Color(0xff53927B),
          //     leading: Container(
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //       height: size.height * 0.1,
          //       width: size.width * 0.14,
          //       child: Center(
          //         child: Text(
          //           'A',
          //           style: TextStyle(
          //               color: Color(0xff29756F),
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20),
          //         ),
          //       ),
          //     ),
          //     trailing: IconButton(
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.expand_circle_down_rounded,
          //           color: Colors.white,
          //         )),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(15),
          //     ),
          //     title: Text(
          //       'Ashish Jain',
          //       style: TextStyle(
          //         color: Colors.black,
          //       ),
          //     ),
          //     subtitle: Text(
          //       '6000/Month',
          //       style: TextStyle(color: Colors.grey),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //     selected: false,
          //     focusColor: Color(0xff53927B),
          //     tileColor: Colors.white,
          //     selectedTileColor: Color(0xff53927B),
          //     leading: Container(
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //       height: size.height * 0.1,
          //       width: size.width * 0.14,
          //       child: Center(
          //         child: Text(
          //           'A',
          //           style: TextStyle(
          //               color: Color(0xff29756F),
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20),
          //         ),
          //       ),
          //     ),
          //     trailing: IconButton(
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.expand_circle_down_rounded,
          //           color: Colors.white,
          //         )),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(15),
          //     ),
          //     title: Text(
          //       'Ashish Jain',
          //       style: TextStyle(
          //         color: Colors.black,
          //       ),
          //     ),
          //     subtitle: Text(
          //       '6000/Month',
          //       style: TextStyle(color: Colors.grey),
          //     ),
          //   ),
          // ),
        ]),
      ),
      floatingActionButton: Container(
        width: size.width * 0.45,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const newmem()),
            );
          },
          child: Text(
            'Add Member',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xffA0205E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}

//
// class user extends StatefulWidget {
//   const user({Key? key}) : super(key: key);
//
//   @override
//   State<user> createState() => _userState();
// }
//
// class _userState extends State<user> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//           title: Container(
//             width: double.infinity,
//             height: size.height * 0.01,
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(5)),
//             child: Center(
//               child: TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.search),
//                     hintText: 'Search...',
//                     border: InputBorder.none),
//               ),
//             ),
//           ),
//           ),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           SizedBox(
//             height: size.height * 0.005,
//           ),
//           Card(
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: ListTile(
//               selected: true,
//               focusColor: Color(0xffA9C8C5),
//               tileColor: Colors.white,
//               selectedTileColor: Color(0xffA9C8C5),
//               leading: Container(
//                 child: Center(
//                   child: Text(
//                     'A',
//                     style: TextStyle(color: Color(0xff29756F)),
//                   ),
//                 ),
//               ),
//               trailing: CircleAvatar(
//                 backgroundColor: Color(0xffD9D9D9F),
//                 child: Text(
//                   '40',
//                   style: TextStyle(
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               title: Text(
//                 'Ashish Jain',
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               subtitle: Text('6000/Month'),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.005,
//           ),
//           Card(
//             elevation: 3,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: ListTile(
//               selected: false,
//               focusColor: Color(0xffA9C8C5),
//               tileColor: Colors.white,
//               selectedTileColor: Color(0xffA9C8C5),
//               leading: Container(
//                 child: Image.asset('assets/house-line-fill 1.png'),
//               ),
//               trailing: CircleAvatar(
//                 backgroundColor: Color(0xff29756F),
//                 child: Text(
//                   '40',
//                   style: TextStyle(
//                     color: Colors.white60,
//                   ),
//                 ),
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               title: Center(
//                 child: Text(
//                   'Chiran Road',
//                   style: TextStyle(
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.005,
//           ),
//           Card(
//             elevation: 3,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: ListTile(
//               selected: false,
//               focusColor: Color(0xffA9C8C5),
//               tileColor: Colors.white,
//               selectedTileColor: Color(0xffA9C8C5),
//               leading: Container(
//                 child: Image.asset('assets/house-line-fill 1.png'),
//               ),
//               trailing: CircleAvatar(
//                 backgroundColor: Color(0xff29756F),
//                 child: Text(
//                   '40',
//                   style: TextStyle(
//                     color: Colors.white60,
//                   ),
//                 ),
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               title: Text(
//                 'Chiran Road',
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               subtitle: Text('6000/Month'),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.005,
//           ),
//           Card(
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: ListTile(
//               selected: false,
//               focusColor: Color(0xffA9C8C5),
//               tileColor: Colors.white,
//               selectedTileColor: Color(0xffA9C8C5),
//               leading: Container(
//                 child: Image.asset('assets/house-line-fill 1.png'),
//               ),
//               trailing: CircleAvatar(
//                 backgroundColor: Color(0xff29756F),
//                 child: Text(
//                   '40',
//                   style: TextStyle(
//                     color: Colors.white60,
//                   ),
//                 ),
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               title: Center(
//                 child: Text(
//                   'Rea Road',
//                   style: TextStyle(
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ]),
//       ),
//       floatingActionButton: Container(
//         width: size.width * 0.45,
//         child: FloatingActionButton(
//           onPressed: () {},
//           child: Text(
//             'Add Member',
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//           backgroundColor: Color(0xffA0205E),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15.0)),
//           ),
//         ),
//       ),
//     );
//   }
// }

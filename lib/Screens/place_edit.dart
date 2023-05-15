import 'package:flutter/material.dart';
import 'package:internship2/Screens/usersearch.dart';

class placeedit extends StatefulWidget {
  const placeedit({Key? key}) : super(key: key);
  static const id1 = '/placeedit';
  @override
  State<placeedit> createState() => _placeeditState();
}

class _placeeditState extends State<placeedit> {
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const user()),
                  );
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
            height: size.height * 0.03,
          ),
          ListTile(
            selected: false,
            focusColor: Color(0xffA9C8C5),
            tileColor: Colors.white,
            selectedTileColor: Color(0xffA9C8C5),
            leading: Container(
              child: Image.asset('assets/place_edit/h1.png'),
            ),
            title: Text(
              'Chiran Road',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          ListTile(
            selected: false,
            focusColor: Color(0xffA9C8C5),
            tileColor: Colors.white,
            selectedTileColor: Color(0xffA9C8C5),
            leading: Container(
              child: Image.asset('assets/place_edit/h2.png'),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            title: Text(
              'Khudai Road',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          ListTile(
            selected: false,
            focusColor: Color(0xffA9C8C5),
            tileColor: Colors.white,
            selectedTileColor: Color(0xffA9C8C5),
            leading: Container(
              child: Image.asset('assets/place_edit/h3.png'),
            ),
            title: Text(
              'Basant Road',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          ListTile(
            selected: false,
            focusColor: Color(0xffA9C8C5),
            tileColor: Colors.white,
            selectedTileColor: Color(0xffA9C8C5),
            leading: Container(
              child: Image.asset('assets/place_edit/h4.png'),
            ),
            title: Text(
              'Rewa Road',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: Container(
        width: size.width * 0.9,
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    color: Color(0xffBBF5F1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff757575),
                            ),
                          ),
                        ),
                        Container(
                            child: Column(
                          children: [
                            Row(children: [
                              Image.asset(
                                'assets/Line 8.png',
                              ),
                              Text(
                                'New Place',
                                style: TextStyle(color: Color(0xff205955)),
                              ),
                            ]),
                            Row(
                              children: [
                                TextField(
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                    textAlign: TextAlign.left,
                                    onChanged: (value) {},
                                    decoration: InputDecoration(
                                        hintText: 'Place Name')),
                              ],
                            )
                          ],
                        )),
                        // Row(
                        //   children: [
                        //     TextField(
                        //         style: TextStyle(
                        //           color: Colors.black87,
                        //         ),
                        //         textAlign: TextAlign.left,
                        //         onChanged: (value) {},
                        //         decoration:
                        //             InputDecoration(hintText: 'Place Name')),
                        //   ],
                        // )
                        // Row(
                        //   children: [
                        //     Container(
                        //         // child: Image.asset(
                        //         //   'assets/pen.png',
                        //         // ),
                        //         ),
                        //     TextField(
                        //         style: TextStyle(
                        //           color: Colors.black87,
                        //         ),
                        //         textAlign: TextAlign.left,
                        //         onChanged: (value) {},
                        //         decoration:
                        //             InputDecoration(hintText: 'Place Name')),
                        //   ],
                        // ),
                        //     ListTile(
                        //       tileColor: Color(0xffBBF5F1),
                        //       // leading: Container(
                        //       //   child: Image.asset(
                        //       //     'assets/pen.png',
                        //       //     scale: 5,
                        //       //   ),
                        //       // ),
                        //       onTap: () {},
                        //       trailing: TextField(
                        //           style: TextStyle(
                        //             color: Colors.black87,
                        //           ),
                        //           textAlign: TextAlign.left,
                        //           onChanged: (value) {},
                        //           decoration:
                        //               InputDecoration(hintText: 'Place Name')),
                        //     ),
                        // ListTile(
                        //   tileColor: Color(0xffBBF5F1),
                        //   // leading: Container(
                        //   //   child: Image.asset(
                        //   //     'assets/img.png',
                        //   //     scale: 5,
                        //   //   ),
                        //   // ),
                        //   onTap: () {},
                        //   trailing: TextField(
                        //       style: TextStyle(
                        //         color: Colors.black87,
                        //       ),
                        //       textAlign: TextAlign.left,
                        //       onChanged: (value) {},
                        //       decoration:
                        //           InputDecoration(hintText: 'Place Name')),
                        // ),
                        // ListTile(
                        //   tileColor: Color(0xffBBF5F1),
                        //   // leading: Container(
                        //   //   child: Image.asset(
                        //   //     'assets/cic.png',
                        //   //     scale: 5,
                        //   //   ),
                        //   // ),
                        //   onTap: () {},
                        //   trailing: TextField(
                        //       style: TextStyle(
                        //         color: Colors.black87,
                        //       ),
                        //       textAlign: TextAlign.left,
                        //       onChanged: (value) {},
                        //       decoration:
                        //           InputDecoration(hintText: 'Place Name')),
                        // ),
                      ],
                    ),
                  );
                });
          },
          child: Text(
            'Create Place',
          ),
          backgroundColor: Color(0xff29756F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
    ;
  }
}

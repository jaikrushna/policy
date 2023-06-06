import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship2/widgets/button.dart';
import 'package:internship2/widgets/bottom_circular_button.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:intl/intl.dart';

class due_data extends StatefulWidget {
  const due_data({
    super.key,
    required this.size,
    required this.date_open,
    required this.date_mature,
    required this.Account_No,
    required this.Member_Name,
    required this.Plan,
  });
  final String Member_Name;
  final String Plan;
  final String Account_No;
  final Timestamp date_open;
  final Timestamp date_mature;
  final Size size;

  @override
  State<due_data> createState() => _due_dataState(
      size: size,
      Member_Name: Member_Name,
      Plan: Plan,
      Account_No: Account_No,
      date_mature: date_mature,
      date_open: date_open);
}

class _due_dataState extends State<due_data> {
  _due_dataState({
    required this.size,
    required this.date_open,
    required this.date_mature,
    required this.Account_No,
    required this.Member_Name,
    required this.Plan,
  });
  String _toggleValue2 = 'cash';
  bool _toggleValue1 = false;
  final String Member_Name;
  final String Plan;
  final String Account_No;
  final Timestamp date_open;
  final Timestamp date_mature;
  final Size size;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final dateo =
        DateTime.fromMillisecondsSinceEpoch(date_open.millisecondsSinceEpoch);
    final yearo = dateo.year;
    final montho = dateo.month;
    final dayo = dateo.day;
    final datem =
        DateTime.fromMillisecondsSinceEpoch(date_mature.millisecondsSinceEpoch);
    final yearm = datem.year;
    final monthm = datem.month;
    final daym = datem.day;
    DateTime now = DateTime.now();
    final monthFormat = DateFormat.MMMM();
    final yearFormat = DateFormat.y();

    final currentMonth = monthFormat.format(now);
    final currentYear = yearFormat.format(now);
    return Flexible(
        fit: FlexFit.tight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '$Member_Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '$Account_No',
                        style:
                            TextStyle(color: Color(0xffAF545F), fontSize: 13.0),
                      ),
                    ],
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: button(
                        size: widget.size.width * 0.3,
                        text: 'Due',
                        color: Color(0xffD83F52)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 10.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'DOO',
                            style: TextStyle(
                              fontSize: 13.5,
                              color: Color(0xffAF545F),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: widget.size.width * 0.03,
                          ),
                          Text('$yearo/$montho/$dayo')
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'DOM',
                            style: TextStyle(
                              fontSize: 13.5,
                              color: Color(0xffAF545F),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: widget.size.width * 0.03,
                          ),
                          Text('$yearm/$monthm/$daym')
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'CASH',
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(width: 5),
                              FlutterSwitch(
                                activeColor: Color(0xff1E8829),
                                inactiveColor: Color(0xff1E8829),
                                width: size.width * 0.07,
                                height: size.height * 0.018,
                                valueFontSize: size.height * 0.018,
                                toggleSize: size.height * 0.018,
                                value: _toggleValue1,
                                borderRadius: 30.0,
                                // padding: 8.0,
                                showOnOff: false,
                                onToggle: (val) {
                                  setState(() {
                                    if (val == true) {
                                      _toggleValue2 = 'cash';
                                      _toggleValue1 = val;
                                    } else {
                                      _toggleValue2 = 'online';
                                      _toggleValue1 = val;
                                    }
                                  });
                                },
                              ),
                              SizedBox(width: 5),
                              Text(
                                'ONLINE',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.height * 0.2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: size.width * 0.12,
                            child: Text(
                              "Balance",
                              style: TextStyle(
                                color: Color(0xffaf545f),
                                fontSize: 11,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "1300/-",
                                style: TextStyle(
                                  color: Color(0xaa000000),
                                  fontSize: 15,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: size.width * 0.15,
                            height: size.height * 0.028,
                            color: Color(0x35979797),
                          ),
                          SizedBox(
                            width: size.width * 0.035,
                          ),
                          Container(
                            height: size.height * 0.035,
                            width: size.width * 0.2,
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(19.0, 10.0, 0.0, 0.0),
                              child: Center(
                                child: TextField(
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                    textAlign: TextAlign.left,
                                    onChanged: (value) {
                                      // Premium_Plan = value;
                                    },
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '100',
                                    )),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey)),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 10.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Monthly',
                            style: TextStyle(
                              fontSize: 13.5,
                              color: Color(0xffAF545F),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: widget.size.width * 0.03,
                          ),
                          Text('1000/-'),
                          SizedBox(
                            width: widget.size.width * 0.30,
                          ),
                          Text(
                            'Installments',
                            style: TextStyle(
                              fontSize: 13.5,
                              color: Color(0xffAF545F),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: widget.size.width * 0.03,
                          ),
                          Text(
                            '4/12',
                            style: TextStyle(
                              fontSize: 13.5,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Container(
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           IconButton(
                  //               onPressed: () {},
                  //               icon: Icon(
                  //                 Icons.remove,
                  //                 size: size.width * 0.05,
                  //               )),
                  //           Text(
                  //             "100",
                  //             style: TextStyle(
                  //               color: Color(0xaa000000),
                  //               fontSize: 12,
                  //               fontFamily: "Inter",
                  //               fontWeight: FontWeight.w500,
                  //             ),
                  //           ),
                  //           IconButton(
                  //               onPressed: () {},
                  //               icon: Icon(
                  //                 Icons.add,
                  //                 size: size.width * 0.05,
                  //               )),
                  //         ],
                  //       ),
                  //       width: size.width * 0.20,
                  //       height: size.height * 0.023,
                  //       color: Color(0x35979797),
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    circular_button(
                      size: 20,
                      icon: Image.asset('assets/Acc/IC2.png'),
                    ),
                    circular_button(
                      size: 20,
                      icon: Image.asset('assets/Acc/IC4.png'),
                    ),
                    circular_button(
                      size: 20,
                      icon: Image.asset('assets/Acc/IC5.png'),
                    ),
                  ],
                ),
              ),
            ),
            // ),
            Divider(
              thickness: 0.7,
              height: 0.02,
            )
          ],
        ));
  }
}

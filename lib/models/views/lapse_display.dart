import 'package:flutter/material.dart';
import 'package:internship2/widgets/button.dart';
import 'package:internship2/widgets/bottom_circular_button.dart';
import 'package:flutter_switch/flutter_switch.dart';

class lapse_data extends StatefulWidget {
  const lapse_data({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<lapse_data> createState() => _lapse_dataState();
}

class _lapse_dataState extends State<lapse_data> {
  String _toggleValue2 = 'cash';
  bool _toggleValue1 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
        fit: FlexFit.tight,
        child: Container(
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
                          'Ashish Jain',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '9876543210',
                          style: TextStyle(
                              color: Color(0xffAF545F), fontSize: 13.0),
                        ),
                      ],
                    ),
                    button(
                        size: widget.size.width * 0.3,
                        text: 'Due',
                        color: Color(0xffD83F52))
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
                            Text('10/06/23')
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
                            Text('10/06/27')
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Center(
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Text(
                        //         'CASH',
                        //         style: TextStyle(fontSize: 10),
                        //       ),
                        //       SizedBox(width: 5),
                        //       FlutterSwitch(
                        //         activeColor: Color(0xff1E8829),
                        //         inactiveColor: Color(0xff1E8829),
                        //         width: size.width * 0.07,
                        //         height: size.height * 0.018,
                        //         valueFontSize: size.height * 0.018,
                        //         toggleSize: size.height * 0.018,
                        //         value: _toggleValue1,
                        //         borderRadius: 30.0,
                        //         // padding: 8.0,
                        //         showOnOff: false,
                        //         onToggle: (val) {
                        //           setState(() {
                        //             if (val == true) {
                        //               _toggleValue2 = 'cash';
                        //               _toggleValue1 = val;
                        //             } else {
                        //               _toggleValue2 = 'online';
                        //               _toggleValue1 = val;
                        //             }
                        //           });
                        //         },
                        //       ),
                        //       SizedBox(width: 5),
                        //       Text(
                        //         'ONLINE',
                        //         style: TextStyle(fontSize: 10),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     SizedBox(
                        //       width: size.width * 0.12,
                        //       child: Text(
                        //         "Balance",
                        //         style: TextStyle(
                        //           color: Color(0xffaf545f),
                        //           fontSize: 11,
                        //           fontFamily: "Inter",
                        //           fontWeight: FontWeight.w600,
                        //         ),
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       height: size.height * 0.03,
                        //     ),
                        //     Container(
                        //       child: Center(
                        //         child: Text(
                        //           "1300/-",
                        //           style: TextStyle(
                        //             color: Color(0xaa000000),
                        //             fontSize: 12,
                        //             fontFamily: "Inter",
                        //             fontWeight: FontWeight.w500,
                        //           ),
                        //         ),
                        //       ),
                        //       width: size.width * 0.15,
                        //       height: size.height * 0.023,
                        //       color: Color(0x35979797),
                        //     )
                        //   ],
                        // ),
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
                              'Daily',
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
                            Text('100/-'),
                            SizedBox(
                              width: widget.size.width * 0.03,
                            ),
                            // Text(
                            //   '4/12',
                            //   style: TextStyle(
                            //     fontSize: 13.5,
                            //     color: Color(0xffAF545F),
                            //     fontWeight: FontWeight.w500,
                            //   ),
                            //   textAlign: TextAlign.left,
                            // ),
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
              // Padding(
              // padding: const EdgeInsets.all(8.0),
              // child:
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      circular_button(
                        size: 20,
                        icon: Image.asset('assets/Acc/IC1.png'),
                      ),
                      circular_button(
                        size: 20,
                        icon: Image.asset('assets/Acc/IC2.png'),
                      ),
                      circular_button(
                        size: 20,
                        icon: Image.asset('assets/Acc/IC3.png'),
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
          ),
        ));
  }
}

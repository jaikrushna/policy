import 'package:flutter/material.dart';
import 'package:internship2/widgets/button.dart';
import 'package:internship2/widgets/bottom_circular_button.dart';

class due_data extends StatefulWidget {
  const due_data({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<due_data> createState() => _due_dataState();
}

class _due_dataState extends State<due_data> {
  bool _toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
                      style:
                          TextStyle(color: Color(0xffAF545F), fontSize: 13.0),
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
                top: 10, bottom: 10.0, left: 20.0, right: 20.0),
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
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CASH',
                            style: TextStyle(fontSize: 5),
                          ),
                          SizedBox(height: 5),
                          Switch(
                            value: _toggleValue,
                            onChanged: (value) {
                              setState(() {
                                _toggleValue = value;
                              });
                            },
                          ),
                          Text(
                            'ONLINE',
                            style: TextStyle(fontSize: 5),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
          ),
          Divider(
            thickness: 0.7,
            height: 0.02,
          )
        ],
      ),
    ));
  }
}

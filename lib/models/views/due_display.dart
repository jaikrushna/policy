import 'package:flutter/material.dart';

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
                Container(
                  width: widget.size.width * 0.3,
                  decoration: BoxDecoration(
                    color: Color(0xffD83F52),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    border: Border.all(
                      width: 2,
                      color: Color(0xffD83F52),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        'Due',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
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
                    RawMaterialButton(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(minWidth: 20),
                      onPressed: () {},
                      child: Image.asset('assets/Acc/IC1.png'),
                      elevation: 2.0,
                      fillColor: Color(0xff29756F),
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(minWidth: 20),
                      onPressed: () {},
                      child: Image.asset('assets/Acc/IC2.png'),
                      elevation: 2.0,
                      fillColor: Colors.white,
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(minWidth: 20),
                      onPressed: () {},
                      child: Image.asset('assets/Acc/IC3.png'),
                      elevation: 2.0,
                      fillColor: Colors.white,
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(minWidth: 20),
                      onPressed: () {},
                      child: Image.asset('assets/Acc/IC4.png'),
                      elevation: 2.0,
                      fillColor: Colors.white,
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(minWidth: 20),
                      onPressed: () {},
                      child: Image.asset('assets/Acc/IC5.png'),
                      elevation: 2.0,
                      fillColor: Colors.white,
                      shape: CircleBorder(),
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

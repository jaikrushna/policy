import 'package:flutter/material.dart';

class displayeddata extends StatelessWidget {
  const displayeddata({
    super.key,
    required this.size,
  });

  final Size size;

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
                Text(
                  'Ashish Jain',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    color: Color(0xff29756F),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    border: Border.all(
                      width: 2,
                      color: Color(0xff29756F),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        'May 2007',
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
                    Text(
                      '9876543210',
                      style:
                          TextStyle(color: Color(0xffAF545F), fontSize: 16.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'DAILY',
                          style: TextStyle(
                            fontSize: 13.5,
                            color: Color(0xffAF545F),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          width: size.width * 0.06,
                        ),
                        Text('100/-')
                      ],
                    )
                  ],
                ),
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
                          width: size.width * 0.03,
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
                          width: size.width * 0.03,
                        ),
                        Text('10/06/27')
                      ],
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

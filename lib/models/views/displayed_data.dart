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
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Text(
                  'Chiran Road',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10, bottom: 10.0, left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ashish Jain'),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    border: Border.all(
                      width: 2,
                      color: Colors.green,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('May 2007'),
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
                    Text('9876543210'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('DAILY'),
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
                        Text('DOO'),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Text('10/06/23')
                      ],
                    ),
                    Row(
                      children: [
                        Text('DOM'),
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
                      child: Icon(Icons.request_page),
                      elevation: 2.0,
                      fillColor: Colors.green,
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(minWidth: 20),
                      onPressed: () {},
                      child: Icon(Icons.request_page),
                      elevation: 2.0,
                      fillColor: Colors.white,
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(minWidth: 20),
                      onPressed: () {},
                      child: Icon(Icons.request_page),
                      elevation: 2.0,
                      fillColor: Colors.white,
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(minWidth: 20),
                      onPressed: () {},
                      child: Icon(Icons.request_page),
                      elevation: 2.0,
                      fillColor: Colors.white,
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(minWidth: 20),
                      onPressed: () {},
                      child: Icon(Icons.request_page),
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
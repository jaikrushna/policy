import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class displayeddata extends StatelessWidget {
  displayeddata({
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
  Widget build(BuildContext context) {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 10, bottom: 10.0, left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$Member_Name',
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
                      '$currentMonth $currentYear',
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
                    '$Account_No',
                    style: TextStyle(color: Color(0xffAF545F), fontSize: 16.0),
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
                        width: size.width * 0.03,
                      ),
                      Text('$yearm/$monthm/$daym')
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
                    fillColor: Colors.white,
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
    );
  }
}

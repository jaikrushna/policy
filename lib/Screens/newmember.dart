import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class newmem extends StatefulWidget {
  const newmem({Key? key}) : super(key: key);
  static const String id = 'Newmem';
  @override
  State<newmem> createState() => _newmemState();
}

class _newmemState extends State<newmem> {
  late String Member_Name;
  late String Plan;
  late int Account_No;
  late String Address;
  late String Amount_Collected;
  late String Amount_Remaining;
  late int Phone_No;
  late String Type;

  String dropdownvalue = 'Monthly';
  final _firestone = FirebaseFirestore.instance;
  bool selA = false;
  bool selB = true;
  var items = [
    'Monthly',
    'Yearly',
  ];
  Event buildEvent({Recurrence? recurrence}) {
    return Event(
      title: 'Test eventeee',
      description: 'example',
      location: 'Flutter app',
      startDate: DateTime.now(),
      endDate: DateTime.now().add(Duration(minutes: 30)),
      allDay: false,
      iosParams: IOSParams(
        reminder: Duration(minutes: 40),
        url: "http://example.com",
      ),
      androidParams: AndroidParams(
        emailInvites: ["test@example.com"],
      ),
      recurrence: recurrence,
    );
  }

  DateTime date_open = DateTime(2022, 12, 24);
  DateTime date_mature = DateTime(2030, 1, 15);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Container(
                height: size.height * 0.36,
                decoration: BoxDecoration(
                  color: Color(0xff757575),
                ),
              ),
            ),
            Container(
              color: Color(0xff757575),
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/Line 8.png',
                          ),
                          Text(
                            'New Member',
                            style: TextStyle(
                                color: Color(0xff205955),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: size.width * 0.09,
                          ),
                          Container(
                            height: size.height * 0.035,
                            width: size.width * 0.4,
                            child: Center(child: Text('Premium Plan')),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey)),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/pen.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: size.height * 0.045,
                            width: size.width * 0.5,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Center(
                                child: TextField(
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                    textAlign: TextAlign.left,
                                    onChanged: (value) {
                                      Member_Name = value;
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Member Name')),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey)),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.04,
                        ),
                        Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: TextButton(
                                onPressed: () {
                                  selA = true;
                                  selB = false;
                                  Plan = 'A';
                                  setState(() {});
                                },
                                child: Text(
                                  'A',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: selA
                                      ? MaterialStatePropertyAll<Color>(
                                          Color(0xff42A19A))
                                      : MaterialStatePropertyAll<Color>(
                                          Color(0xffD9D9D9)),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.1,
                              child: TextButton(
                                onPressed: () {
                                  selA = false;
                                  selB = true;
                                  Plan = 'B';
                                  setState(() {});
                                },
                                child: Text(
                                  'B',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: selB
                                      ? MaterialStatePropertyAll<Color>(
                                          Color(0xff42A19A))
                                      : MaterialStatePropertyAll<Color>(
                                          Color(0xffD9D9D9)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/pen.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: size.height * 0.045,
                            width: size.width * 0.5,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Center(
                                child: TextField(
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                    textAlign: TextAlign.left,
                                    onChanged: (value) {
                                      Account_No = int.parse(value);
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Account No')),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey)),
                          ),
                        ),
                        DropdownButton(
                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                              Type = dropdownvalue;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                  child: Icon(Icons.calendar_month_rounded)),
                              Container(
                                height: size.height * 0.045,
                                width: size.width * 0.345,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Center(
                                    child: TextButton(
                                        onPressed: () async {
                                          DateTime? newDate =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: date_open,
                                                  firstDate: DateTime(1990),
                                                  lastDate: DateTime(2100));
                                          if (newDate == null) return;

                                          setState(() => date_open = newDate);
                                        },
                                        child: Text(
                                            style: TextStyle(
                                              color: Colors.black87,
                                            ),
                                            textAlign: TextAlign.left,
                                            '${date_open.day}/${date_open.month}/${date_open.year}')),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.grey)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                  child: Icon(Icons.calendar_month_rounded)),
                              Container(
                                height: size.height * 0.045,
                                width: size.width * 0.345,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Center(
                                    child: TextButton(
                                        onPressed: () async {
                                          DateTime? newDate =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: date_mature,
                                                  firstDate: DateTime(1990),
                                                  lastDate: DateTime(2100));
                                          if (newDate == null) return;

                                          setState(() => date_mature = newDate);
                                        },
                                        child: Text(
                                            style: TextStyle(
                                              color: Colors.black87,
                                            ),
                                            textAlign: TextAlign.left,
                                            '${date_mature.day}/${date_mature.month}/${date_mature.year}')),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.grey)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.75,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Center(
                            child: TextField(
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.left,
                                onChanged: (value) {
                                  Amount_Collected = value;
                                },
                                decoration: InputDecoration(
                                    hintText: 'Amount Collected')),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.grey)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.75,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Center(
                            child: TextField(
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.left,
                                onChanged: (value) {
                                  Amount_Remaining = value;
                                },
                                decoration: InputDecoration(
                                    hintText: 'Amount Remaining')),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.grey)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                              child: Icon(
                            Icons.location_on_outlined,
                            size: 30,
                          )),
                          Container(
                            height: size.height * 0.05,
                            width: size.width * 0.75,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Center(
                                child: TextField(
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                    textAlign: TextAlign.left,
                                    onChanged: (value) {
                                      Address = value;
                                    },
                                    decoration:
                                        InputDecoration(hintText: 'Address')),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                              child: Icon(
                            Icons.call,
                            size: 30,
                          )),
                          Container(
                            height: size.height * 0.05,
                            width: size.width * 0.75,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Center(
                                child: TextField(
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                    textAlign: TextAlign.left,
                                    onChanged: (value) {
                                      Phone_No = int.parse(value);
                                    },
                                    decoration:
                                        InputDecoration(hintText: 'Phone No')),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 0.8,
                      color: Colors.black,
                    ),
                    TextButton(
                        onPressed: () {
                          _firestone.collection('new_account').add({
                            'Member_Name': Member_Name,
                            'Plan': Plan,
                            'Account_No': Account_No,
                            'Address': Address,
                            'Amount_Collected': Amount_Collected,
                            'Amount_Remaining': Amount_Remaining,
                            'Phone_No': Phone_No,
                            'Type': Type,
                            'Date_of_Maturity': date_mature,
                            'Date_of_Opening': date_open,
                          });
                        },
                        child: Center(
                          child: Text(
                            'Create Member',
                            style: TextStyle(
                                color: Color(0xff205955),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

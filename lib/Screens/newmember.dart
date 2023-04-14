import 'package:flutter/material.dart';
import 'package:add_2_calendar/add_2_calendar.dart';

class newmem extends StatefulWidget {
  const newmem({Key? key}) : super(key: key);

  @override
  State<newmem> createState() => _newmemState();
}

class _newmemState extends State<newmem> {
  String dropdownvalue = 'Monthly';
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
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
                                  onChanged: (value) {},
                                  decoration:
                                      InputDecoration(hintText: 'Member Name')),
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
                                  onChanged: (value) {},
                                  decoration:
                                      InputDecoration(hintText: 'Account No')),
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
                                  child: TextField(
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                      textAlign: TextAlign.left,
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                          hintText: 'Date of Opening')),
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
                                  child: TextField(
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                      textAlign: TextAlign.left,
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                          hintText: 'Date of Maturity')),
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
                                  onChanged: (value) {},
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
                                  onChanged: (value) {},
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
                      onPressed: () {},
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
    ));
  }
}

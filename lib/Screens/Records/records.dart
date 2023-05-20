import 'package:flutter/material.dart';
import 'package:internship2/Providers/scheme_selector.dart';
import 'package:internship2/Providers/custom_animated_bottom_bar.dart';
import 'package:internship2/Providers/_buildBottomBar.dart';
import 'package:internship2/Screens/Records/content.dart';
import 'package:internship2/widgets/custom_button_in_record.dart';
import 'package:internship2/widgets/custom_date_picker.dart';
import '../../models/views/due_display.dart';
import 'package:intl/intl.dart';

class Record_Page extends StatefulWidget {
  static const id = '/Record_Page';
  @override
  State<Record_Page> createState() => _Record_PageState();
}

class _Record_PageState extends State<Record_Page> {
  TextEditingController dateInput = TextEditingController();
  String dropdownvalue = 'Select City';

  // List of items in our dropdown menu
  var items = [
    'Select City',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  int _currentIndex = 1;
  final _inactiveColor = Color(0xffEBEBEB);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Color(0xff144743),
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            customized_date_picker(
                title: "From Date", size: size, dateInput: dateInput),
            SizedBox(
              width: 4,
            ),
            customized_date_picker(
                title: "To Date", size: size, dateInput: dateInput),
          ],
        ),
        actions: [
          IconButton(
              iconSize: 50,
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 30,
              ))
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //1
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Sun",
                          date: "1",
                        ),
                      ),
                      //2
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Mon",
                          date: "2",
                        ),
                      ),
                      //3
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Tue",
                          date: "3",
                        ),
                      ),
                      //4
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Wed",
                          date: "4",
                        ),
                      ),
                      //5
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Thu",
                          date: "5",
                        ),
                      ),
                      //6
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Fri",
                          date: "6",
                        ),
                      ),
                      //7
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Sat",
                          date: "7",
                        ),
                      ),
                      //8
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Sun",
                          date: "8",
                        ),
                      ),
                      //9
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Mon",
                          date: "9",
                        ),
                      ),
                      //10
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Tue",
                          date: "10",
                        ),
                      ),
                      //11
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: custom_buttom_in_record(
                          day: "Wed",
                          date: "11",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0XFFEBF0EF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      border: Border.all(
                        width: 3,
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 35,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0XFFFEFEFE),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
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
                                  onChanged: (var newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                height: size.height * 0.23,
                child: record_data(size: size),
              ),
              Container(
                height: size.height * 0.23,
                child: record_data(size: size),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff29756F),
                  ),
                onPressed: () {},
                child: Text("View Collection Sheet"),
              )
              // Container(
              //   height: size.height * 0.23,
              //   child: Record_Page_data(size: size),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomBar(),
    );
  }
}

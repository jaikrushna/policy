import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class customized_date_picker extends StatelessWidget {
  String title;

  customized_date_picker({
    super.key,
    required this.title,
    required this.size,
    required this.dateInput,
  });

  final Size size;
  final TextEditingController dateInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 3.1,
      height: size.height * 0.05,
      /* decoration: BoxDecoration(
          color: Color(0XFFEBEBEB),
          borderRadius: BorderRadius.circular(18)), */
      child: Center(
        child: TextField(
          controller: dateInput,
          //editing controller of this TextField
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.calendar_today,
                size: 20,
              ),
              labelText: title,
              labelStyle: TextStyle(fontSize: 13),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 3, color: Colors.grey), //<-- SEE HERE
                borderRadius: BorderRadius.circular(50.0),
              )),
          readOnly: true,
          //set it true, so that user will not able to edit text
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1950),
                //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2100));

            if (pickedDate != null) {
              print(
                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate =
                  DateFormat('yyyy-MM-dd').format(pickedDate);
              print(
                  formattedDate); //formatted date output using intl package =>  2021-03-16
              /* setState(
                () {
                  dateInput.text =
                      formattedDate; //set output date to TextField value.
                },
              ); */
            } else {}
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class custom_buttom_in_record extends StatelessWidget {
  String day;
  String date;
  custom_buttom_in_record({
    required this.day,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0XFF29756F),
            ),
            height: 57,
            width: 45,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Text(
                    day,
                    style: TextStyle(fontSize: 9, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 2.5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFF205955),
                    ),
                    height: 33,
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          date,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

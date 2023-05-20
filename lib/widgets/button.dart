import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({
    super.key,
    required this.size,
    required this.text,
    required this.color,
  });

  final double size;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          border: Border.all(
            width: 2,
            color: color,
            style: BorderStyle.solid,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              '$text',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
